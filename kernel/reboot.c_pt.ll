; ModuleID = '/llk/IR_all_yes/kernel/reboot.c_pt.bc'
source_filename = "../kernel/reboot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cad_pid\22, \22a\22\09"
module asm "\09.weak\09__crc_cad_pid\09\09\09\09"
module asm "\09.long\09__crc_cad_pid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cad_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22cad_pid\22\09\09\09\09\09"
module asm "__kstrtabns_cad_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+reboot_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_reboot_mode\09\09\09\09"
module asm "\09.long\09__crc_reboot_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reboot_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22reboot_mode\22\09\09\09\09\09"
module asm "__kstrtabns_reboot_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_power_off_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_power_off_prepare\09\09\09\09"
module asm "\09.long\09__crc_pm_power_off_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_power_off_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_power_off_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_pm_power_off_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+emergency_restart\22, \22a\22\09"
module asm "\09.weak\09__crc_emergency_restart\09\09\09\09"
module asm "\09.long\09__crc_emergency_restart\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_emergency_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22emergency_restart\22\09\09\09\09\09"
module asm "__kstrtabns_emergency_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_reboot_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_reboot_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_reboot_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_reboot_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_reboot_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_reboot_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_reboot_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_reboot_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_register_reboot_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_register_reboot_notifier\09\09\09\09"
module asm "\09.long\09__crc_devm_register_reboot_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_register_reboot_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_register_reboot_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_restart_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_register_restart_handler\09\09\09\09"
module asm "\09.long\09__crc_register_restart_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22register_restart_handler\22\09\09\09\09\09"
module asm "__kstrtabns_register_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_restart_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_restart_handler\09\09\09\09"
module asm "\09.long\09__crc_unregister_restart_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_restart_handler\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_restart_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernel_restart\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_restart\09\09\09\09"
module asm "\09.long\09__crc_kernel_restart\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_restart\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernel_halt\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_halt\09\09\09\09"
module asm "\09.long\09__crc_kernel_halt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_halt\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernel_power_off\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_power_off\09\09\09\09"
module asm "\09.long\09__crc_kernel_power_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_power_off\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+orderly_poweroff\22, \22a\22\09"
module asm "\09.weak\09__crc_orderly_poweroff\09\09\09\09"
module asm "\09.long\09__crc_orderly_poweroff\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_orderly_poweroff:\09\09\09\09\09"
module asm "\09.asciz \09\22orderly_poweroff\22\09\09\09\09\09"
module asm "__kstrtabns_orderly_poweroff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+orderly_reboot\22, \22a\22\09"
module asm "\09.weak\09__crc_orderly_reboot\09\09\09\09"
module asm "\09.long\09__crc_orderly_reboot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_orderly_reboot:\09\09\09\09\09"
module asm "\09.asciz \09\22orderly_reboot\22\09\09\09\09\09"
module asm "__kstrtabns_orderly_reboot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hw_protection_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_hw_protection_shutdown\09\09\09\09"
module asm "\09.long\09__crc_hw_protection_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hw_protection_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22hw_protection_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_hw_protection_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.22 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.96, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }

@C_A_D = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@cad_pid = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cad_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cad_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_cad_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cad_pid to i32), ptr @__kstrtab_cad_pid, ptr @__kstrtabns_cad_pid }, section "___ksymtab+cad_pid", align 4
@reboot_mode = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__kstrtab_reboot_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_reboot_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_reboot_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reboot_mode to i32), ptr @__kstrtab_reboot_mode, ptr @__kstrtabns_reboot_mode }, section "___ksymtab_gpl+reboot_mode", align 4
@panic_reboot_mode = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@reboot_default = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@reboot_type = dso_local global { i32, [28 x i8] } { i32 97, [28 x i8] zeroinitializer }, align 32
@pm_power_off_prepare = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pm_power_off_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_power_off_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_power_off_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_power_off_prepare to i32), ptr @__kstrtab_pm_power_off_prepare, ptr @__kstrtabns_pm_power_off_prepare }, section "___ksymtab_gpl+pm_power_off_prepare", align 4
@__kstrtab_emergency_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_emergency_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_emergency_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @emergency_restart to i32), ptr @__kstrtab_emergency_restart, ptr @__kstrtabns_emergency_restart }, section "___ksymtab_gpl+emergency_restart", align 4
@reboot_notifier_list = external dso_local global %struct.blocking_notifier_head, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_reboot_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_reboot_notifier to i32), ptr @__kstrtab_register_reboot_notifier, ptr @__kstrtabns_register_reboot_notifier }, section "___ksymtab+register_reboot_notifier", align 4
@__kstrtab_unregister_reboot_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_reboot_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_reboot_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_reboot_notifier to i32), ptr @__kstrtab_unregister_reboot_notifier, ptr @__kstrtabns_unregister_reboot_notifier }, section "___ksymtab+unregister_reboot_notifier", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"devm_unregister_reboot_notifier\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_devm_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_register_reboot_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_register_reboot_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_register_reboot_notifier to i32), ptr @__kstrtab_devm_register_reboot_notifier, ptr @__kstrtabns_devm_register_reboot_notifier }, section "___ksymtab+devm_register_reboot_notifier", align 4
@restart_handler_list = internal global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_register_restart_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_restart_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_register_restart_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_restart_handler to i32), ptr @__kstrtab_register_restart_handler, ptr @__kstrtabns_register_restart_handler }, section "___ksymtab+register_restart_handler", align 4
@__kstrtab_unregister_restart_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_restart_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_restart_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_restart_handler to i32), ptr @__kstrtab_unregister_restart_handler, ptr @__kstrtabns_unregister_restart_handler }, section "___ksymtab+unregister_restart_handler", align 4
@reboot_cpu = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kernel_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\010reboot: Restarting system\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel_restart\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel/reboot.c\00", [16 x i8] zeroinitializer }, align 32
@kernel_restart._entry_ptr = internal global ptr @kernel_restart._entry, section ".printk_index", align 4
@kernel_restart._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\010reboot: Restarting system with command '%s'\0A\00", [49 x i8] zeroinitializer }, align 32
@kernel_restart._entry_ptr.6 = internal global ptr @kernel_restart._entry.4, section ".printk_index", align 4
@__kstrtab_kernel_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_restart to i32), ptr @__kstrtab_kernel_restart, ptr @__kstrtabns_kernel_restart }, section "___ksymtab_gpl+kernel_restart", align 4
@kernel_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\010reboot: System halted\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kernel_halt\00", [20 x i8] zeroinitializer }, align 32
@kernel_halt._entry_ptr = internal global ptr @kernel_halt._entry, section ".printk_index", align 4
@__kstrtab_kernel_halt = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_halt = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_halt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_halt to i32), ptr @__kstrtab_kernel_halt, ptr @__kstrtabns_kernel_halt }, section "___ksymtab_gpl+kernel_halt", align 4
@kernel_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\010reboot: Power down\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel_power_off\00", [47 x i8] zeroinitializer }, align 32
@kernel_power_off._entry_ptr = internal global ptr @kernel_power_off._entry, section ".printk_index", align 4
@__kstrtab_kernel_power_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_power_off = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_power_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_power_off to i32), ptr @__kstrtab_kernel_power_off, ptr @__kstrtabns_kernel_power_off }, section "___ksymtab_gpl+kernel_power_off", align 4
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"system_transition_mutex.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@system_transition_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @system_transition_mutex, i64 52), ptr getelementptr (i8, ptr @system_transition_mutex, i64 52) }, ptr @system_transition_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system_transition_mutex\00", [40 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_reboot\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__reboot = internal global %struct.syscall_metadata { ptr @.str.15, i32 -1, i32 4, ptr @types__reboot, ptr @args__reboot, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__reboot, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__reboot, i64 20) }, ptr @event_enter__reboot, ptr @event_exit__reboot }, align 4
@event_enter__reboot = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__reboot, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__reboot = internal global ptr @event_enter__reboot, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_reboot\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__reboot = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__reboot, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__reboot = internal global ptr @event_exit__reboot, section "_ftrace_events", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_reboot\00", [21 x i8] zeroinitializer }, align 32
@types__reboot = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.22, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@args__reboot = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__reboot = internal global ptr @__syscall_meta__reboot, section "__syscalls_metadata", align 4
@ctrl_alt_del.cad_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @ctrl_alt_del.cad_work, i64 4), ptr getelementptr (i8, ptr @ctrl_alt_del.cad_work, i64 4) }, ptr @deferred_cad, %struct.lockdep_map { ptr @ctrl_alt_del.cad_work, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cad_work\00", [23 x i8] zeroinitializer }, align 32
@poweroff_cmd = dso_local global { [256 x i8], [64 x i8] } { [256 x i8] c"/sbin/poweroff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@poweroff_force = internal global { i1, [31 x i8] } zeroinitializer, align 32
@poweroff_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @poweroff_work, i64 4), ptr getelementptr (i8, ptr @poweroff_work, i64 4) }, ptr @poweroff_work_func, %struct.lockdep_map { ptr @poweroff_work, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_orderly_poweroff = external dso_local constant [0 x i8], align 1
@__kstrtabns_orderly_poweroff = external dso_local constant [0 x i8], align 1
@__ksymtab_orderly_poweroff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @orderly_poweroff to i32), ptr @__kstrtab_orderly_poweroff, ptr @__kstrtabns_orderly_poweroff }, section "___ksymtab_gpl+orderly_poweroff", align 4
@reboot_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @reboot_work, i64 4), ptr getelementptr (i8, ptr @reboot_work, i64 4) }, ptr @reboot_work_func, %struct.lockdep_map { ptr @reboot_work, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_orderly_reboot = external dso_local constant [0 x i8], align 1
@__kstrtabns_orderly_reboot = external dso_local constant [0 x i8], align 1
@__ksymtab_orderly_reboot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @orderly_reboot to i32), ptr @__kstrtab_orderly_reboot, ptr @__kstrtabns_orderly_reboot }, section "___ksymtab_gpl+orderly_reboot", align 4
@hw_protection_shutdown.allow_proceed = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 1 }, [28 x i8] zeroinitializer }, align 32
@hw_protection_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\010reboot: HARDWARE PROTECTION shutdown (%s)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hw_protection_shutdown\00", [41 x i8] zeroinitializer }, align 32
@hw_protection_shutdown._entry_ptr = internal global ptr @hw_protection_shutdown._entry, section ".printk_index", align 4
@__kstrtab_hw_protection_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_hw_protection_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_hw_protection_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hw_protection_shutdown to i32), ptr @__kstrtab_hw_protection_shutdown, ptr @__kstrtabns_hw_protection_shutdown }, section "___ksymtab_gpl+hw_protection_shutdown", align 4
@__setup_str_reboot_setup = internal constant [8 x i8] c"reboot=\00", section ".init.rodata", align 1
@__setup_reboot_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_reboot_setup, ptr @reboot_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_reboot__299_891_reboot_ksysfs_init7 = internal global ptr @reboot_ksysfs_init, section ".initcall7.init", align 4
@reboot_force = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"restart_handler_list.lock\00", [38 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"magic1\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"magic2\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arg\00", [28 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poweroff_work\00", [18 x i8] zeroinitializer }, align 32
@__orderly_poweroff._entry = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 465, ptr null, ptr null }, align 1
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014reboot: Failed to start orderly shutdown: forcing the issue\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__orderly_poweroff\00", [45 x i8] zeroinitializer }, align 32
@__orderly_poweroff._entry_ptr = internal global ptr @__orderly_poweroff._entry, section ".printk_index", align 4
@run_cmd.envp = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.31, ptr @.str.32, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reboot_work\00", [20 x i8] zeroinitializer }, align 32
@reboot_cmd = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"/sbin/reboot\00", [19 x i8] zeroinitializer }, align 32
@__orderly_reboot._entry = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 450, ptr null, ptr null }, align 1
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014reboot: Failed to start orderly reboot: forcing the issue\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__orderly_reboot\00", [47 x i8] zeroinitializer }, align 32
@__orderly_reboot._entry_ptr = internal global ptr @__orderly_reboot._entry, section ".printk_index", align 4
@hw_failure_emergency_poweroff_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @hw_failure_emergency_poweroff_work, i64 4), ptr getelementptr (i8, ptr @hw_failure_emergency_poweroff_work, i64 4) }, ptr @hw_failure_emergency_poweroff_func, %struct.lockdep_map { ptr @hw_failure_emergency_poweroff_work, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.37, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(hw_failure_emergency_poweroff_work).work\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/reboot.c:550\00", [44 x i8] zeroinitializer }, align 32
@hw_failure_emergency_poweroff_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\010reboot: Hardware protection timed-out. Trying forced poweroff\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hw_failure_emergency_poweroff_func\00", [61 x i8] zeroinitializer }, align 32
@hw_failure_emergency_poweroff_func._entry_ptr = internal global ptr @hw_failure_emergency_poweroff_func._entry, section ".printk_index", align 4
@hw_failure_emergency_poweroff_func._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\010reboot: Hardware protection shutdown failed. Trying emergency restart\0A\00", [55 x i8] zeroinitializer }, align 32
@hw_failure_emergency_poweroff_func._entry_ptr.42 = internal global ptr @hw_failure_emergency_poweroff_func._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"panic_\00", [25 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@reboot_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013reboot: Ignoring the CPU number in reboot= option. CPU %d exceeds possible cpu number %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reboot_setup\00", [19 x i8] zeroinitializer }, align 32
@reboot_setup._entry_ptr = internal global ptr @reboot_setup._entry, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reboot\00", [25 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@reboot_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @reboot_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@reboot_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @reboot_mode_attr, ptr @reboot_cpu_attr, ptr null], [20 x i8] zeroinitializer }, align 32
@reboot_mode_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@reboot_cpu_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu_show, ptr @cpu_store }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cold\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"warm\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hard\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.mode_show = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 85072278, i64 369367448, i64 537993216, i64 672274793]
@__sancov_gen_cov_switch_values.57 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 19088743, i64 1163412803, i64 2309737967, i64 2712847316, i64 3454992675, i64 3489725666]
@__sancov_gen_cov_switch_values.58 = internal global [14 x i64] [i64 12, i64 8, i64 97, i64 98, i64 99, i64 101, i64 102, i64 103, i64 104, i64 107, i64 112, i64 115, i64 116, i64 119]
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"C_A_D\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 26, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"cad_pid\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 27, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"reboot_mode\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 35, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"panic_reboot_mode\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 37, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"reboot_default\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 46, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"reboot_type\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 48, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"pm_power_off_prepare\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 55, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 122, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"restart_handler_list\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"reboot_cpu\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 47, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 252, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 254, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 278, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 296, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"system_transition_mutex\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 302, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"event_enter__reboot\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"event_exit__reboot\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"types__reboot\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"args__reboot\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [9 x i8] c"cad_work\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 412, i32 9 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"poweroff_cmd\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 420, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"poweroff_force\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"poweroff_work\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"reboot_work\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"allow_proceed\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 583, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 585, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"reboot_force\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 49, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 143, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 108, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 312, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 486, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 465, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [5 x i8] c"envp\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 426, i32 15 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 427, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 428, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 508, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant [11 x i8] c"reboot_cmd\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 421, i32 19 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 450, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [35 x i8] c"hw_failure_emergency_poweroff_work\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 549, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 539, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 545, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 612, i32 21 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 643, i32 6 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 879, i32 39 }
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"reboot_attr_group\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 870, i32 37 }
@___asan_gen_.285 = private unnamed_addr constant [13 x i8] c"reboot_attrs\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 858, i32 26 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"reboot_mode_attr\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 746, i32 30 }
@___asan_gen_.291 = private unnamed_addr constant [16 x i8] c"reboot_cpu_attr\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 855, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 746, i32 49 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 703, i32 9 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 706, i32 9 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 709, i32 9 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 712, i32 9 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 715, i32 9 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 718, i32 9 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 721, i32 22 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 855, i32 48 }
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [19 x i8] c"../kernel/reboot.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 831, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant [23 x i8] c"switch.table.mode_show\00", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__event_enter__reboot, ptr @__event_exit__reboot, ptr @__initcall__kmod_reboot__299_891_reboot_ksysfs_init7, ptr @__ksymtab_cad_pid, ptr @__ksymtab_devm_register_reboot_notifier, ptr @__ksymtab_emergency_restart, ptr @__ksymtab_hw_protection_shutdown, ptr @__ksymtab_kernel_halt, ptr @__ksymtab_kernel_power_off, ptr @__ksymtab_kernel_restart, ptr @__ksymtab_orderly_poweroff, ptr @__ksymtab_orderly_reboot, ptr @__ksymtab_pm_power_off_prepare, ptr @__ksymtab_reboot_mode, ptr @__ksymtab_register_reboot_notifier, ptr @__ksymtab_register_restart_handler, ptr @__ksymtab_unregister_reboot_notifier, ptr @__ksymtab_unregister_restart_handler, ptr @__orderly_poweroff._entry, ptr @__orderly_poweroff._entry_ptr, ptr @__orderly_reboot._entry, ptr @__orderly_reboot._entry_ptr, ptr @__p_syscall_meta__reboot, ptr @__setup_reboot_setup, ptr @__syscall_meta__reboot, ptr @event_enter__reboot, ptr @event_exit__reboot, ptr @hw_failure_emergency_poweroff_func._entry, ptr @hw_failure_emergency_poweroff_func._entry.40, ptr @hw_failure_emergency_poweroff_func._entry_ptr, ptr @hw_failure_emergency_poweroff_func._entry_ptr.42, ptr @hw_protection_shutdown._entry, ptr @hw_protection_shutdown._entry_ptr, ptr @kernel_halt._entry, ptr @kernel_halt._entry_ptr, ptr @kernel_power_off._entry, ptr @kernel_power_off._entry_ptr, ptr @kernel_restart._entry, ptr @kernel_restart._entry.4, ptr @kernel_restart._entry_ptr, ptr @kernel_restart._entry_ptr.6, ptr @reboot_setup._entry, ptr @reboot_setup._entry_ptr, ptr @C_A_D, ptr @cad_pid, ptr @reboot_mode, ptr @panic_reboot_mode, ptr @reboot_default, ptr @reboot_type, ptr @pm_power_off_prepare, ptr @.str, ptr @restart_handler_list, ptr @reboot_cpu, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @system_transition_mutex, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @types__reboot, ptr @args__reboot, ptr @ctrl_alt_del.cad_work, ptr @.str.16, ptr @poweroff_cmd, ptr @poweroff_force, ptr @poweroff_work, ptr @reboot_work, ptr @hw_protection_shutdown.allow_proceed, ptr @.str.17, ptr @.str.18, ptr @reboot_force, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @run_cmd.envp, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @reboot_cmd, ptr @.str.34, ptr @.str.35, ptr @hw_failure_emergency_poweroff_work, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @reboot_attr_group, ptr @reboot_attrs, ptr @reboot_mode_attr, ptr @reboot_cpu_attr, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @switch.table.mode_show], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @C_A_D to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cad_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_reboot_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_default to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_power_off_prepare to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_handler_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_restart._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_transition_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__reboot to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__reboot to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__reboot to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__reboot to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_alt_del.cad_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poweroff_cmd to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poweroff_force to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poweroff_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_protection_shutdown.allow_proceed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_protection_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_force to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_cmd.envp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_cmd to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_failure_emergency_poweroff_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_failure_emergency_poweroff_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_failure_emergency_poweroff_func._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_mode_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_cpu_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mode_show to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_reboot = dso_local alias i32 (i32, i32, i32, ptr), ptr @__se_sys_reboot

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emergency_restart() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kmsg_dump(i32 noundef 3) #11
  tail call void @machine_restart(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernel_restart_prepare(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef %cmd) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 6, ptr @system_state, align 4
  %call.i = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_shutdown() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_reboot_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @reboot_notifier_list, ptr noundef %nb) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_reboot_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @reboot_notifier_list, ptr noundef %nb) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_register_reboot_notifier(ptr noundef %dev, ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_unregister_reboot_notifier, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @reboot_notifier_list, ptr noundef %nb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %nb, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devres_free(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_unregister_reboot_notifier(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %call.i = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @reboot_notifier_list, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !202

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 114, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_restart_handler(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @restart_handler_list, ptr noundef %nb) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_restart_handler(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @restart_handler_list, ptr noundef %nb) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_kernel_restart(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @reboot_mode, align 4
  %call = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @restart_handler_list, i32 noundef %0, ptr noundef %cmd) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @migrate_to_reboot_cpu() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @reboot_cpu, align 4
  tail call void @cpu_hotplug_disable() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp.not.i.i.i.i = icmp ugt i32 %1, %0
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %0, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %0, 31
  %4 = shl nuw i32 1, %and.i.i.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.then, label %cpu_online.exit.if.end_crit_edge

cpu_online.exit.if.end_crit_edge:                 ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %6) #11
  %.pre = and i32 %call.i, 31
  %.pre8 = lshr i32 %call.i, 5
  br label %if.end

if.end:                                           ; preds = %if.then, %cpu_online.exit.if.end_crit_edge
  %div3.i.pre-phi = phi i32 [ %.pre8, %if.then ], [ %div1.i.i.i, %cpu_online.exit.if.end_crit_edge ]
  %rem.i.pre-phi = phi i32 [ %.pre, %if.then ], [ %and.i.i.i, %cpu_online.exit.if.end_crit_edge ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !192) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or = or i32 %12, 67108864
  store i32 %or, ptr %flags, align 4
  %13 = load ptr, ptr %task, align 8
  %add.i = add nuw nsw i32 %rem.i.pre-phi, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %idx.neg.i = sub nsw i32 0, %div3.i.pre-phi
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call6 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %13, ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernel_restart(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef %cmd) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 6, ptr @system_state, align 4
  %call.i.i = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  tail call void @migrate_to_reboot_cpu()
  tail call void @syscore_shutdown() #11
  %tobool.not = icmp eq ptr %cmd, null
  br i1 %tobool.not, label %do.end, label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %cmd) #14
  br label %if.end

if.end:                                           ; preds = %do.end2, %do.end
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_restart(ptr noundef %cmd) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscore_shutdown() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernel_halt() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 2, ptr noundef null) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 4, ptr @system_state, align 4
  %call.i.i = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  tail call void @migrate_to_reboot_cpu()
  tail call void @syscore_shutdown() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_halt() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_halt() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernel_power_off() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 3, ptr noundef null) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 5, ptr @system_state, align 4
  %call.i.i = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  %0 = load ptr, ptr @pm_power_off_prepare, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %0() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @migrate_to_reboot_cpu()
  tail call void @syscore_shutdown() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_power_off() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_power_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_reboot(i32 noundef %magic1, i32 noundef %magic2, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %buffer.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !192) #11
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call1.i = tail call ptr @task_active_pid_ns(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer.i) #11
  %5 = call ptr @memset(ptr %buffer.i, i32 255, i32 256)
  %user_ns.i = getelementptr inbounds %struct.pid_namespace, ptr %call1.i, i32 0, i32 8
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 22) #11
  br i1 %call2.i, label %if.end.i, label %entry.__do_sys_reboot.exit_crit_edge

entry.__do_sys_reboot.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_reboot.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18751827, i32 %magic1)
  %cmp.not.i = icmp eq i32 %magic1, -18751827
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.__do_sys_reboot.exit_crit_edge

if.end.i.__do_sys_reboot.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_reboot.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %8 = zext i32 %magic2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magic2, label %lor.lhs.false.i.__do_sys_reboot.exit_crit_edge [
    i32 672274793, label %lor.lhs.false.i.if.end10.i_crit_edge
    i32 85072278, label %lor.lhs.false.i.if.end10.i_crit_edge5
    i32 369367448, label %lor.lhs.false.i.if.end10.i_crit_edge6
    i32 537993216, label %lor.lhs.false.i.if.end10.i_crit_edge7
  ]

lor.lhs.false.i.if.end10.i_crit_edge7:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

lor.lhs.false.i.if.end10.i_crit_edge6:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

lor.lhs.false.i.if.end10.i_crit_edge5:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

lor.lhs.false.i.if.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

lor.lhs.false.i.__do_sys_reboot.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_reboot.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i.if.end10.i_crit_edge, %lor.lhs.false.i.if.end10.i_crit_edge5, %lor.lhs.false.i.if.end10.i_crit_edge6, %lor.lhs.false.i.if.end10.i_crit_edge7
  %call11.i = tail call i32 @reboot_pid_ns(ptr noundef %call1.i, i32 noundef %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.end10.i.__do_sys_reboot.exit_crit_edge

if.end10.i.__do_sys_reboot.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_reboot.exit

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1126301404, i32 %cmd)
  %cmp14.i = icmp eq i32 %cmd, 1126301404
  br i1 %cmp14.i, label %land.lhs.true15.i, label %if.end18.i

land.lhs.true15.i:                                ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %9 = load ptr, ptr @pm_power_off, align 4
  %tobool16.not.i = icmp eq ptr %9, null
  tail call void @mutex_lock_nested(ptr noundef nonnull @system_transition_mutex, i32 noundef 0) #11
  br i1 %tobool16.not.i, label %land.lhs.true15.i.sw.bb21.i_crit_edge, label %if.end18.thread45.i

land.lhs.true15.i.sw.bb21.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21.i

if.end18.thread45.i:                              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kernel_power_off() #11
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef 0) #15
  unreachable

if.end18.i:                                       ; preds = %if.end13.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @system_transition_mutex, i32 noundef 0) #11
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %cmd, label %if.end18.i.sw.epilog.i_crit_edge [
    i32 19088743, label %sw.bb.i
    i32 -1985229329, label %sw.bb19.i
    i32 0, label %sw.bb20.i
    i32 -839974621, label %if.end18.i.sw.bb21.i_crit_edge
    i32 -805241630, label %sw.bb31.i
    i32 -1582119980, label %sw.bb23.i
    i32 1163412803, label %sw.bb29.i
  ]

if.end18.i.sw.bb21.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21.i

if.end18.i.sw.epilog.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef null) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 6, ptr @system_state, align 4
  %call.i.i.i3 = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  tail call void @migrate_to_reboot_cpu() #11
  tail call void @syscore_shutdown() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_restart(ptr noundef null) #11
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr @C_A_D, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @C_A_D, align 4
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end18.i.sw.bb21.i_crit_edge, %land.lhs.true15.i.sw.bb21.i_crit_edge
  tail call void @kernel_halt() #11
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef 0) #15
  unreachable

sw.bb23.i:                                        ; preds = %if.end18.i
  %call24.i = call i32 @strncpy_from_user(ptr noundef nonnull %buffer.i, ptr noundef %0, i32 noundef 255) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %sw.bb23.i.sw.epilog.i_crit_edge, label %if.end27.i

sw.bb23.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end27.i:                                       ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx28.i = getelementptr inbounds [256 x i8], ptr %buffer.i, i32 0, i32 255
  %11 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx28.i, align 1
  %call.i.i = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef nonnull %buffer.i) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 6, ptr @system_state, align 4
  %call.i.i.i = call i32 @__usermodehelper_disable(i32 noundef 2) #11
  call void @device_shutdown() #11
  call void @migrate_to_reboot_cpu() #11
  call void @syscore_shutdown() #11
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %buffer.i) #14
  call void @kmsg_dump(i32 noundef 4) #11
  call void @machine_restart(ptr noundef nonnull %buffer.i) #11
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = tail call i32 @kernel_kexec() #11
  br label %sw.epilog.i

sw.bb31.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i = tail call i32 @hibernate() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb31.i, %sw.bb29.i, %if.end27.i, %sw.bb23.i.sw.epilog.i_crit_edge, %sw.bb20.i, %sw.bb19.i, %sw.bb.i, %if.end18.i.sw.epilog.i_crit_edge
  %ret.0.i = phi i32 [ %call32.i, %sw.bb31.i ], [ %call30.i, %sw.bb29.i ], [ %call24.i, %if.end27.i ], [ 0, %sw.bb20.i ], [ 0, %sw.bb19.i ], [ 0, %sw.bb.i ], [ -14, %sw.bb23.i.sw.epilog.i_crit_edge ], [ -22, %if.end18.i.sw.epilog.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #11
  br label %__do_sys_reboot.exit

__do_sys_reboot.exit:                             ; preds = %sw.epilog.i, %if.end10.i.__do_sys_reboot.exit_crit_edge, %lor.lhs.false.i.__do_sys_reboot.exit_crit_edge, %if.end.i.__do_sys_reboot.exit_crit_edge, %entry.__do_sys_reboot.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %sw.epilog.i ], [ -1, %entry.__do_sys_reboot.exit_crit_edge ], [ -22, %lor.lhs.false.i.__do_sys_reboot.exit_crit_edge ], [ -22, %if.end.i.__do_sys_reboot.exit_crit_edge ], [ %call11.i, %if.end10.i.__do_sys_reboot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ctrl_alt_del() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @C_A_D, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @ctrl_alt_del.cad_work) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @cad_pid, align 4
  %call.i = tail call i32 @kill_pid(ptr noundef %2, i32 noundef 2, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deferred_cad(ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef null) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 6, ptr @system_state, align 4
  %call.i.i.i = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  tail call void @migrate_to_reboot_cpu() #11
  tail call void @syscore_shutdown() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_restart(ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orderly_poweroff(i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @poweroff_force, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @poweroff_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orderly_reboot() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @reboot_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_protection_shutdown(ptr noundef %reason, i32 noundef %ms_until_forced) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %reason) #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hw_protection_shutdown.allow_proceed, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr nonnull @hw_protection_shutdown.allow_proceed, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hw_protection_shutdown.allow_proceed, ptr nonnull @hw_protection_shutdown.allow_proceed, i32 1, ptr nonnull elementtype(i32) @hw_protection_shutdown.allow_proceed) #11, !srcloc !204
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ms_until_forced)
  %cmp.i = icmp slt i32 %ms_until_forced, 1
  br i1 %cmp.i, label %if.end.hw_failure_emergency_poweroff.exit_crit_edge, label %if.else.i.i

if.end.hw_failure_emergency_poweroff.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_failure_emergency_poweroff.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %ms_until_forced) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @hw_failure_emergency_poweroff_work, i32 noundef %call2.i.i) #11
  br label %hw_failure_emergency_poweroff.exit

hw_failure_emergency_poweroff.exit:               ; preds = %if.else.i.i, %if.end.hw_failure_emergency_poweroff.exit_crit_edge
  store i1 true, ptr @poweroff_force, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i2 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @poweroff_work) #11
  br label %return

return:                                           ; preds = %hw_failure_emergency_poweroff.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @reboot_setup(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %entry
  %str.addr.0 = phi ptr [ %str, %entry ], [ %incdec.ptr, %sw.epilog.for.cond_crit_edge ]
  store i32 0, ptr @reboot_default, align 4
  %call = tail call i32 @strncmp(ptr noundef %str.addr.0, ptr noundef nonnull dereferenceable(7) @.str.43, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %mode.0 = select i1 %tobool.not, ptr @panic_reboot_mode, ptr @reboot_mode
  %str.addr.1.idx = select i1 %tobool.not, i32 6, i32 0
  %str.addr.1 = getelementptr i8, ptr %str.addr.0, i32 %str.addr.1.idx
  %0 = ptrtoint ptr %str.addr.1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.addr.1, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %1, label %for.cond.sw.epilog_crit_edge [
    i8 119, label %sw.bb
    i8 99, label %sw.bb1
    i8 104, label %sw.bb2
    i8 115, label %sw.bb3
    i8 103, label %sw.bb26
    i8 98, label %for.cond.sw.bb27_crit_edge
    i8 97, label %for.cond.sw.bb27_crit_edge157
    i8 107, label %for.cond.sw.bb27_crit_edge158
    i8 116, label %for.cond.sw.bb27_crit_edge159
    i8 101, label %for.cond.sw.bb27_crit_edge160
    i8 112, label %for.cond.sw.bb27_crit_edge161
    i8 102, label %sw.bb29
  ]

for.cond.sw.bb27_crit_edge161:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

for.cond.sw.bb27_crit_edge160:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

for.cond.sw.bb27_crit_edge159:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

for.cond.sw.bb27_crit_edge158:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

for.cond.sw.bb27_crit_edge157:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

for.cond.sw.bb27_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %mode.0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %mode.0, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %mode.0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode.0, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %mode.0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %mode.0, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.cond
  %arrayidx = getelementptr i8, ptr %str.addr.1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %7)
  %cmp = icmp eq i8 %7, 109
  br i1 %cmp, label %land.end, label %sw.bb3.land.end.thread_crit_edge

sw.bb3.land.end.thread_crit_edge:                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.thread

land.end:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr i8, ptr %str.addr.1, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %9)
  %cmp8 = icmp eq i8 %9, 112
  %spec.select = select i1 %cmp8, i32 3, i32 1
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %sw.bb3.land.end.thread_crit_edge
  %10 = phi i32 [ 1, %sw.bb3.land.end.thread_crit_edge ], [ %spec.select, %land.end ]
  %add.ptr10 = getelementptr i8, ptr %str.addr.1, i32 %10
  %11 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr10, align 1
  %conv12 = zext i8 %12 to i32
  %13 = add nsw i32 %conv12, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %13)
  %14 = icmp ult i32 %13, -10
  br i1 %14, label %if.else24, label %if.then15

if.then15:                                        ; preds = %land.end.thread
  %call16 = tail call i32 @simple_strtoul(ptr noundef %add.ptr10, ptr noundef null, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %15) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %call4.i.i)
  %cmp18.not = icmp ult i32 %call16, %call4.i.i
  br i1 %cmp18.not, label %if.end23, label %if.end.i.i154

if.end.i.i154:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i153 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %16) #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call16, i32 noundef %call4.i.i153) #14
  br label %sw.epilog

if.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %call16, ptr @reboot_cpu, align 4
  br label %sw.epilog

if.else24:                                        ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %mode.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %mode.0, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %mode.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %mode.0, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.cond.sw.bb27_crit_edge, %for.cond.sw.bb27_crit_edge157, %for.cond.sw.bb27_crit_edge158, %for.cond.sw.bb27_crit_edge159, %for.cond.sw.bb27_crit_edge160, %for.cond.sw.bb27_crit_edge161
  %conv28 = zext i8 %1 to i32
  store i32 %conv28, ptr @reboot_type, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr @reboot_force, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb27, %sw.bb26, %if.else24, %if.end23, %if.end.i.i154, %sw.bb2, %sw.bb1, %sw.bb, %for.cond.sw.epilog_crit_edge
  %str.addr.2 = phi ptr [ %str.addr.1, %for.cond.sw.epilog_crit_edge ], [ %str.addr.1, %sw.bb29 ], [ %str.addr.1, %sw.bb27 ], [ %str.addr.1, %sw.bb26 ], [ %add.ptr10, %if.else24 ], [ %str.addr.1, %sw.bb2 ], [ %str.addr.1, %sw.bb1 ], [ %str.addr.1, %sw.bb ], [ %add.ptr10, %if.end23 ], [ %add.ptr10, %if.end.i.i154 ]
  %call30 = tail call ptr @strchr(ptr noundef %str.addr.2, i32 noundef 44)
  %tobool31.not = icmp eq ptr %call30, null
  %incdec.ptr = getelementptr i8, ptr %call30, i32 1
  br i1 %tobool31.not, label %for.end, label %sw.epilog.for.cond_crit_edge

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @reboot_ksysfs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.46, ptr noundef %0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call, ptr noundef nonnull @reboot_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kobject_put(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usermodehelper_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reboot_pid_ns(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_kexec() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hibernate() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poweroff_work_func(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @poweroff_force, align 1
  %call.i.i = tail call ptr @argv_split(i32 noundef 3264, ptr noundef nonnull @poweroff_cmd, ptr noundef null) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.run_cmd.exit.i_crit_edge, label %if.then.i.i

entry.run_cmd.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %run_cmd.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i.i, align 4
  %call1.i.i = tail call i32 @call_usermodehelper(ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef nonnull @run_cmd.envp, i32 noundef 1) #11
  tail call void @argv_free(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %phi.cmp.i = icmp eq i32 %call1.i.i, 0
  br label %run_cmd.exit.i

run_cmd.exit.i:                                   ; preds = %if.then.i.i, %entry.run_cmd.exit.i_crit_edge
  %ret.0.i.i = phi i1 [ %phi.cmp.i, %if.then.i.i ], [ false, %entry.run_cmd.exit.i_crit_edge ]
  %force.not.i = xor i1 %.b1, true
  %brmerge.i = or i1 %ret.0.i.i, %force.not.i
  br i1 %brmerge.i, label %run_cmd.exit.i.__orderly_poweroff.exit_crit_edge, label %do.end.i

run_cmd.exit.i.__orderly_poweroff.exit_crit_edge: ; preds = %run_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__orderly_poweroff.exit

do.end.i:                                         ; preds = %run_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  tail call void @emergency_sync() #11
  tail call void @kernel_power_off() #11
  br label %__orderly_poweroff.exit

__orderly_poweroff.exit:                          ; preds = %do.end.i, %run_cmd.exit.i.__orderly_poweroff.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_sync() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reboot_work_func(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @argv_split(i32 noundef 3264, ptr noundef nonnull @reboot_cmd, ptr noundef null) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.end.i_crit_edge, label %run_cmd.exit.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

run_cmd.exit.i:                                   ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i.i, align 4
  %call1.i.i = tail call i32 @call_usermodehelper(ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef nonnull @run_cmd.envp, i32 noundef 1) #11
  tail call void @argv_free(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %run_cmd.exit.i.__orderly_reboot.exit_crit_edge, label %run_cmd.exit.i.do.end.i_crit_edge

run_cmd.exit.i.do.end.i_crit_edge:                ; preds = %run_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

run_cmd.exit.i.__orderly_reboot.exit_crit_edge:   ; preds = %run_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__orderly_reboot.exit

do.end.i:                                         ; preds = %run_cmd.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  tail call void @emergency_sync() #11
  %call.i.i.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @reboot_notifier_list, i32 noundef 1, ptr noundef null) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 6, ptr @system_state, align 4
  %call.i.i.i.i = tail call i32 @__usermodehelper_disable(i32 noundef 2) #11
  tail call void @device_shutdown() #11
  tail call void @migrate_to_reboot_cpu() #11
  tail call void @syscore_shutdown() #11
  %call.i1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  tail call void @kmsg_dump(i32 noundef 4) #11
  tail call void @machine_restart(ptr noundef null) #11
  br label %__orderly_reboot.exit

__orderly_reboot.exit:                            ; preds = %do.end.i, %run_cmd.exit.i.__orderly_reboot.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_failure_emergency_poweroff_func(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14
  tail call void @kernel_power_off()
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  tail call void @kmsg_dump(i32 noundef 3) #11
  tail call void @machine_restart(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @reboot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mode_show, i32 0, i32 %0
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %val.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.53, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, ptr noundef nonnull %val.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 22) #11
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.48, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %if.else

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.49, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end23_crit_edge, label %if.else6

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.else6:                                         ; preds = %if.else
  %call7 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.50, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else6.if.end23_crit_edge, label %if.else10

if.else6.if.end23_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.else10:                                        ; preds = %if.else6
  %call11 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.51, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else10.if.end23_crit_edge, label %if.else14

if.else10.if.end23_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.else14:                                        ; preds = %if.else10
  %call15 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.52, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else14.if.end23_crit_edge, label %if.else14.return_crit_edge

if.else14.return_crit_edge:                       ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else14.if.end23_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end23:                                         ; preds = %if.else14.if.end23_crit_edge, %if.else10.if.end23_crit_edge, %if.else6.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %.sink = phi i32 [ 0, %if.end.if.end23_crit_edge ], [ 1, %if.else.if.end23_crit_edge ], [ 2, %if.else6.if.end23_crit_edge ], [ 3, %if.else10.if.end23_crit_edge ], [ 4, %if.else14.if.end23_crit_edge ]
  store i32 %.sink, ptr @reboot_mode, align 4
  store i32 0, ptr @reboot_default, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.else14.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %count, %if.end23 ], [ -1, %entry.return_crit_edge ], [ -22, %if.else14.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @reboot_cpu, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %cpunum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpunum) #11
  %0 = ptrtoint ptr %cpunum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpunum, align 4, !annotation !206
  %call = tail call zeroext i1 @capable(i32 noundef 22) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %cpunum) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %cpunum to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpunum, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %call4.i.i)
  %cmp.not = icmp ult i32 %2, %call4.i.i
  br i1 %cmp.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @reboot_default, align 4
  %4 = ptrtoint ptr %cpunum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpunum, align 4
  store i32 %5, ptr @reboot_cpu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -34, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpunum) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !129, !131, !133, !134, !136, !137, !138, !139, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !159, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190}
!llvm.named.register.sp = !{!192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @C_A_D, !1, !"C_A_D", i1 false, i1 false}
!1 = !{!"../kernel/reboot.c", i32 26, i32 5}
!2 = !{ptr @__ksymtab_cad_pid, !3, !"__ksymtab_cad_pid", i1 false, i1 false}
!3 = !{!"../kernel/reboot.c", i32 28, i32 1}
!4 = !{ptr @reboot_mode, !5, !"reboot_mode", i1 false, i1 false}
!5 = !{!"../kernel/reboot.c", i32 35, i32 18}
!6 = !{ptr @__ksymtab_reboot_mode, !7, !"__ksymtab_reboot_mode", i1 false, i1 false}
!7 = !{!"../kernel/reboot.c", i32 36, i32 1}
!8 = !{ptr @panic_reboot_mode, !9, !"panic_reboot_mode", i1 false, i1 false}
!9 = !{!"../kernel/reboot.c", i32 37, i32 18}
!10 = !{ptr @reboot_default, !11, !"reboot_default", i1 false, i1 false}
!11 = !{!"../kernel/reboot.c", i32 46, i32 5}
!12 = !{ptr @reboot_type, !13, !"reboot_type", i1 false, i1 false}
!13 = !{!"../kernel/reboot.c", i32 48, i32 18}
!14 = !{ptr @__ksymtab_pm_power_off_prepare, !15, !"__ksymtab_pm_power_off_prepare", i1 false, i1 false}
!15 = !{!"../kernel/reboot.c", i32 56, i32 1}
!16 = !{ptr @__ksymtab_emergency_restart, !17, !"__ksymtab_emergency_restart", i1 false, i1 false}
!17 = !{!"../kernel/reboot.c", i32 71, i32 1}
!18 = !{ptr @__ksymtab_register_reboot_notifier, !19, !"__ksymtab_register_reboot_notifier", i1 false, i1 false}
!19 = !{!"../kernel/reboot.c", i32 95, i32 1}
!20 = !{ptr @__ksymtab_unregister_reboot_notifier, !21, !"__ksymtab_unregister_reboot_notifier", i1 false, i1 false}
!21 = !{!"../kernel/reboot.c", i32 110, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/reboot.c", i32 122, i32 9}
!24 = !{ptr @__ksymtab_devm_register_reboot_notifier, !25, !"__ksymtab_devm_register_reboot_notifier", i1 false, i1 false}
!25 = !{!"../kernel/reboot.c", i32 137, i32 1}
!26 = !{ptr @__ksymtab_register_restart_handler, !27, !"__ksymtab_register_restart_handler", i1 false, i1 false}
!27 = !{!"../kernel/reboot.c", i32 187, i32 1}
!28 = !{ptr @__ksymtab_unregister_restart_handler, !29, !"__ksymtab_unregister_restart_handler", i1 false, i1 false}
!29 = !{!"../kernel/reboot.c", i32 202, i32 1}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/reboot.c", i32 252, i32 3}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @kernel_restart._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @kernel_restart._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/reboot.c", i32 254, i32 3}
!38 = !{ptr @kernel_restart._entry.4, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @kernel_restart._entry_ptr.6, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_kernel_restart, !41, !"__ksymtab_kernel_restart", i1 false, i1 false}
!41 = !{!"../kernel/reboot.c", i32 258, i32 1}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/reboot.c", i32 278, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @kernel_halt._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @kernel_halt._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__ksymtab_kernel_halt, !48, !"__ksymtab_kernel_halt", i1 false, i1 false}
!48 = !{!"../kernel/reboot.c", i32 282, i32 1}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/reboot.c", i32 296, i32 2}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @kernel_power_off._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @kernel_power_off._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @__ksymtab_kernel_power_off, !55, !"__ksymtab_kernel_power_off", i1 false, i1 false}
!55 = !{!"../kernel/reboot.c", i32 300, i32 1}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/reboot.c", i32 302, i32 1}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @system_transition_mutex, !57, !"system_transition_mutex", i1 false, i1 false}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/reboot.c", i32 312, i32 1}
!62 = !{ptr @event_enter__reboot, !61, !"event_enter__reboot", i1 false, i1 false}
!63 = !{ptr @__event_enter__reboot, !61, !"__event_enter__reboot", i1 false, i1 false}
!64 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @event_exit__reboot, !61, !"event_exit__reboot", i1 false, i1 false}
!66 = !{ptr @__event_exit__reboot, !61, !"__event_exit__reboot", i1 false, i1 false}
!67 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__syscall_meta__reboot, !61, !"__syscall_meta__reboot", i1 false, i1 false}
!69 = !{ptr @__p_syscall_meta__reboot, !61, !"__p_syscall_meta__reboot", i1 false, i1 false}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/reboot.c", i32 412, i32 9}
!72 = !{ptr @ctrl_alt_del.cad_work, !71, !"cad_work", i1 false, i1 false}
!73 = !{ptr @poweroff_cmd, !74, !"poweroff_cmd", i1 false, i1 false}
!74 = !{!"../kernel/reboot.c", i32 420, i32 6}
!75 = !{ptr @__ksymtab_orderly_poweroff, !76, !"__ksymtab_orderly_poweroff", i1 false, i1 false}
!76 = !{!"../kernel/reboot.c", i32 501, i32 1}
!77 = !{ptr @__ksymtab_orderly_reboot, !78, !"__ksymtab_orderly_reboot", i1 false, i1 false}
!78 = !{!"../kernel/reboot.c", i32 520, i32 1}
!79 = !{ptr @hw_protection_shutdown.allow_proceed, !80, !"allow_proceed", i1 false, i1 false}
!80 = !{!"../kernel/reboot.c", i32 583, i32 18}
!81 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/reboot.c", i32 585, i32 2}
!83 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @hw_protection_shutdown._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @hw_protection_shutdown._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @__ksymtab_hw_protection_shutdown, !87, !"__ksymtab_hw_protection_shutdown", i1 false, i1 false}
!87 = !{!"../kernel/reboot.c", i32 598, i32 1}
!88 = !{ptr @__setup_reboot_setup, !89, !"__setup_reboot_setup", i1 false, i1 false}
!89 = !{!"../kernel/reboot.c", i32 679, i32 1}
!90 = !{ptr @__initcall__kmod_reboot__299_891_reboot_ksysfs_init7, !91, !"__initcall__kmod_reboot__299_891_reboot_ksysfs_init7", i1 false, i1 false}
!91 = !{!"../kernel/reboot.c", i32 891, i32 1}
!92 = !{ptr @cad_pid, !93, !"cad_pid", i1 false, i1 false}
!93 = !{!"../kernel/reboot.c", i32 27, i32 13}
!94 = !{ptr @reboot_cpu, !95, !"reboot_cpu", i1 false, i1 false}
!95 = !{!"../kernel/reboot.c", i32 47, i32 5}
!96 = !{ptr @reboot_force, !97, !"reboot_force", i1 false, i1 false}
!97 = !{!"../kernel/reboot.c", i32 49, i32 5}
!98 = !{ptr @pm_power_off_prepare, !99, !"pm_power_off_prepare", i1 false, i1 false}
!99 = !{!"../kernel/reboot.c", i32 55, i32 8}
!100 = distinct !{null, !101, !"poweroff_force", i1 false, i1 false}
!101 = !{!"../kernel/reboot.c", i32 479, i32 13}
!102 = !{ptr @.str.19, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/reboot.c", i32 143, i32 8}
!104 = !{ptr @restart_handler_list, !103, !"restart_handler_list", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!107 = !{ptr @.str.20, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @types__reboot, !61, !"types__reboot", i1 false, i1 false}
!112 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @args__reboot, !61, !"args__reboot", i1 false, i1 false}
!117 = !{ptr @.str.28, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/reboot.c", i32 486, i32 8}
!119 = !{ptr @poweroff_work, !118, !"poweroff_work", i1 false, i1 false}
!120 = !{ptr @.str.29, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/reboot.c", i32 465, i32 3}
!122 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__orderly_poweroff._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @__orderly_poweroff._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.31, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../kernel/reboot.c", i32 427, i32 3}
!127 = !{ptr @.str.32, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../kernel/reboot.c", i32 428, i32 3}
!129 = !{ptr @run_cmd.envp, !130, !"envp", i1 false, i1 false}
!130 = !{!"../kernel/reboot.c", i32 426, i32 15}
!131 = !{ptr @.str.33, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../kernel/reboot.c", i32 508, i32 8}
!133 = !{ptr @reboot_work, !132, !"reboot_work", i1 false, i1 false}
!134 = !{ptr @.str.34, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/reboot.c", i32 450, i32 3}
!136 = !{ptr @.str.35, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @__orderly_reboot._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @__orderly_reboot._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @reboot_cmd, !140, !"reboot_cmd", i1 false, i1 false}
!140 = !{!"../kernel/reboot.c", i32 421, i32 19}
!141 = !{ptr @.str.36, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../kernel/reboot.c", i32 549, i32 8}
!143 = !{ptr @.str.37, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @hw_failure_emergency_poweroff_work, !142, !"hw_failure_emergency_poweroff_work", i1 false, i1 false}
!145 = !{ptr @.str.38, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/reboot.c", i32 539, i32 2}
!147 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @hw_failure_emergency_poweroff_func._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @hw_failure_emergency_poweroff_func._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.41, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/reboot.c", i32 545, i32 2}
!152 = !{ptr @hw_failure_emergency_poweroff_func._entry.40, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @hw_failure_emergency_poweroff_func._entry_ptr.42, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @__setup_str_reboot_setup, !89, !"__setup_str_reboot_setup", i1 false, i1 false}
!155 = !{ptr @.str.43, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../kernel/reboot.c", i32 612, i32 21}
!157 = !{ptr @.str.44, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../kernel/reboot.c", i32 643, i32 6}
!159 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @reboot_setup._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @reboot_setup._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.46, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/reboot.c", i32 879, i32 39}
!164 = !{ptr @reboot_attr_group, !165, !"reboot_attr_group", i1 false, i1 false}
!165 = !{!"../kernel/reboot.c", i32 870, i32 37}
!166 = !{ptr @reboot_attrs, !167, !"reboot_attrs", i1 false, i1 false}
!167 = !{!"../kernel/reboot.c", i32 858, i32 26}
!168 = !{ptr @.str.47, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/reboot.c", i32 746, i32 49}
!170 = !{ptr @reboot_mode_attr, !171, !"reboot_mode_attr", i1 false, i1 false}
!171 = !{!"../kernel/reboot.c", i32 746, i32 30}
!172 = !{ptr @.str.48, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/reboot.c", i32 703, i32 9}
!174 = !{ptr @.str.49, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/reboot.c", i32 706, i32 9}
!176 = !{ptr @.str.50, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/reboot.c", i32 709, i32 9}
!178 = !{ptr @.str.51, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/reboot.c", i32 712, i32 9}
!180 = !{ptr @.str.52, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/reboot.c", i32 715, i32 9}
!182 = !{ptr @.str.53, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/reboot.c", i32 718, i32 9}
!184 = !{ptr @.str.54, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/reboot.c", i32 721, i32 22}
!186 = !{ptr @.str.55, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/reboot.c", i32 855, i32 48}
!188 = !{ptr @reboot_cpu_attr, !189, !"reboot_cpu_attr", i1 false, i1 false}
!189 = !{!"../kernel/reboot.c", i32 855, i32 30}
!190 = !{ptr @.str.56, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/reboot.c", i32 831, i32 22}
!192 = !{!"sp"}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{i64 2148226899}
!204 = !{i64 2148141632, i64 2148141664, i64 2148141693, i64 2148141727, i64 2148141758, i64 2148141781}
!205 = !{i64 2148227128}
!206 = !{!"auto-init"}
