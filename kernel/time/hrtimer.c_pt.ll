; ModuleID = '/llk/IR_all_yes/kernel/time/hrtimer.c_pt.bc'
source_filename = "../kernel/time/hrtimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__ktime_divns\22, \22a\22\09"
module asm "\09.weak\09__crc___ktime_divns\09\09\09\09"
module asm "\09.long\09__crc___ktime_divns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ktime_divns:\09\09\09\09\09"
module asm "\09.asciz \09\22__ktime_divns\22\09\09\09\09\09"
module asm "__kstrtabns___ktime_divns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_add_safe\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_add_safe\09\09\09\09"
module asm "\09.long\09__crc_ktime_add_safe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_add_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_add_safe\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_add_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_init_on_stack\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_init_on_stack\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_init_on_stack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_init_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_init_on_stack\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_init_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_init_sleeper_on_stack\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_init_sleeper_on_stack\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_init_sleeper_on_stack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_init_sleeper_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_init_sleeper_on_stack\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_init_sleeper_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+destroy_hrtimer_on_stack\22, \22a\22\09"
module asm "\09.weak\09__crc_destroy_hrtimer_on_stack\09\09\09\09"
module asm "\09.long\09__crc_destroy_hrtimer_on_stack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_destroy_hrtimer_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22destroy_hrtimer_on_stack\22\09\09\09\09\09"
module asm "__kstrtabns_destroy_hrtimer_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_resolution\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_resolution\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_resolution\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_resolution\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_forward\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_forward\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_forward\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_forward\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_forward:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_start_range_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_start_range_ns\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_start_range_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_start_range_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_start_range_ns\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_start_range_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_try_to_cancel\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_try_to_cancel\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_try_to_cancel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_try_to_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_try_to_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_try_to_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_cancel\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_cancel\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_cancel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__hrtimer_get_remaining\22, \22a\22\09"
module asm "\09.weak\09__crc___hrtimer_get_remaining\09\09\09\09"
module asm "\09.long\09__crc___hrtimer_get_remaining\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hrtimer_get_remaining:\09\09\09\09\09"
module asm "\09.asciz \09\22__hrtimer_get_remaining\22\09\09\09\09\09"
module asm "__kstrtabns___hrtimer_get_remaining:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_init\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_init\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_init\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_active\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_active\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_active:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_active\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_sleeper_start_expires\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_sleeper_start_expires\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_sleeper_start_expires\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_sleeper_start_expires:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_sleeper_start_expires\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_sleeper_start_expires:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hrtimer_init_sleeper\22, \22a\22\09"
module asm "\09.weak\09__crc_hrtimer_init_sleeper\09\09\09\09"
module asm "\09.long\09__crc_hrtimer_init_sleeper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hrtimer_init_sleeper:\09\09\09\09\09"
module asm "\09.asciz \09\22hrtimer_init_sleeper\22\09\09\09\09\09"
module asm "__kstrtabns_hrtimer_init_sleeper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+schedule_hrtimeout_range\22, \22a\22\09"
module asm "\09.weak\09__crc_schedule_hrtimeout_range\09\09\09\09"
module asm "\09.long\09__crc_schedule_hrtimeout_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_hrtimeout_range:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_hrtimeout_range\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_hrtimeout_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+schedule_hrtimeout\22, \22a\22\09"
module asm "\09.weak\09__crc_schedule_hrtimeout\09\09\09\09"
module asm "\09.long\09__crc_schedule_hrtimeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_hrtimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_hrtimeout\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_hrtimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base], [88 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.debug_obj_descr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.22 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tick_device = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.94, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.94 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.timespec64 = type { i64, i32 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hrtimer_bases.lock\00", [45 x i8] zeroinitializer }, align 32
@hrtimer_bases = weak dso_local global %struct.hrtimer_cpu_base { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 0, i32 0, i8 0, i32 0, i16 0, i16 0, i32 0, i64 0, ptr null, i64 0, ptr null, [8 x %struct.hrtimer_clock_base] [%struct.hrtimer_clock_base { ptr null, i32 0, i32 1, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 1, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_real, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 2, i32 7, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_boottime, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 3, i32 11, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_clocktai, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 4, i32 1, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 5, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_real, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 6, i32 7, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_boottime, i64 0 }, %struct.hrtimer_clock_base { ptr null, i32 7, i32 11, %struct.seqcount_raw_spinlock zeroinitializer, ptr null, %struct.timerqueue_head zeroinitializer, ptr @ktime_get_clocktai, i64 0 }], [88 x i8] undef }, section ".data..percpu", align 128
@__kstrtab___ktime_divns = external dso_local constant [0 x i8], align 1
@__kstrtabns___ktime_divns = external dso_local constant [0 x i8], align 1
@__ksymtab___ktime_divns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ktime_divns to i32), ptr @__kstrtab___ktime_divns, ptr @__kstrtabns___ktime_divns }, section "___ksymtab_gpl+__ktime_divns", align 4
@__kstrtab_ktime_add_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_add_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_add_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_add_safe to i32), ptr @__kstrtab_ktime_add_safe, ptr @__kstrtabns_ktime_add_safe }, section "___ksymtab_gpl+ktime_add_safe", align 4
@hrtimer_debug_descr = internal constant { %struct.debug_obj_descr, [32 x i8] } { %struct.debug_obj_descr { ptr @.str.9, ptr @hrtimer_debug_hint, ptr null, ptr @hrtimer_fixup_init, ptr @hrtimer_fixup_activate, ptr null, ptr @hrtimer_fixup_free, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_hrtimer_init_on_stack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_init_on_stack = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_init_on_stack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_init_on_stack to i32), ptr @__kstrtab_hrtimer_init_on_stack, ptr @__kstrtabns_hrtimer_init_on_stack }, section "___ksymtab_gpl+hrtimer_init_on_stack", align 4
@__kstrtab_hrtimer_init_sleeper_on_stack = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_init_sleeper_on_stack = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_init_sleeper_on_stack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_init_sleeper_on_stack to i32), ptr @__kstrtab_hrtimer_init_sleeper_on_stack, ptr @__kstrtabns_hrtimer_init_sleeper_on_stack }, section "___ksymtab_gpl+hrtimer_init_sleeper_on_stack", align 4
@__kstrtab_destroy_hrtimer_on_stack = external dso_local constant [0 x i8], align 1
@__kstrtabns_destroy_hrtimer_on_stack = external dso_local constant [0 x i8], align 1
@__ksymtab_destroy_hrtimer_on_stack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @destroy_hrtimer_on_stack to i32), ptr @__kstrtab_destroy_hrtimer_on_stack, ptr @__kstrtabns_destroy_hrtimer_on_stack }, section "___ksymtab_gpl+destroy_hrtimer_on_stack", align 4
@hrtimer_resolution = dso_local global i32 10000000, section ".data..read_mostly", align 4
@__kstrtab_hrtimer_resolution = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_resolution = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_resolution = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_resolution to i32), ptr @__kstrtab_hrtimer_resolution, ptr @__kstrtabns_hrtimer_resolution }, section "___ksymtab_gpl+hrtimer_resolution", align 4
@__setup_str_setup_hrtimer_hres = internal constant [9 x i8] c"highres=\00", section ".init.rodata", align 1
@__setup_setup_hrtimer_hres = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_hrtimer_hres, ptr @setup_hrtimer_hres, i32 0 }, section ".init.setup", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tick_nohz_active = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@hrtimer_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @hrtimer_work, i64 4), ptr getelementptr (i8, ptr @hrtimer_work, i64 4) }, ptr @clock_was_set_work, %struct.lockdep_map { ptr @hrtimer_work, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@hrtimers_resume_local.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/time/hrtimer.c\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_hrtimer_forward = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_forward = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_forward = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_forward to i32), ptr @__kstrtab_hrtimer_forward, ptr @__kstrtabns_hrtimer_forward }, section "___ksymtab_gpl+hrtimer_forward", align 4
@hrtimer_start_range_ns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_hrtimer_start_range_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_start_range_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_start_range_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_start_range_ns to i32), ptr @__kstrtab_hrtimer_start_range_ns, ptr @__kstrtabns_hrtimer_start_range_ns }, section "___ksymtab_gpl+hrtimer_start_range_ns", align 4
@__kstrtab_hrtimer_try_to_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_try_to_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_try_to_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_try_to_cancel to i32), ptr @__kstrtab_hrtimer_try_to_cancel, ptr @__kstrtabns_hrtimer_try_to_cancel }, section "___ksymtab_gpl+hrtimer_try_to_cancel", align 4
@__kstrtab_hrtimer_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_cancel to i32), ptr @__kstrtab_hrtimer_cancel, ptr @__kstrtabns_hrtimer_cancel }, section "___ksymtab_gpl+hrtimer_cancel", align 4
@__kstrtab___hrtimer_get_remaining = external dso_local constant [0 x i8], align 1
@__kstrtabns___hrtimer_get_remaining = external dso_local constant [0 x i8], align 1
@__ksymtab___hrtimer_get_remaining = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hrtimer_get_remaining to i32), ptr @__kstrtab___hrtimer_get_remaining, ptr @__kstrtabns___hrtimer_get_remaining }, section "___ksymtab_gpl+__hrtimer_get_remaining", align 4
@__kstrtab_hrtimer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_init to i32), ptr @__kstrtab_hrtimer_init, ptr @__kstrtabns_hrtimer_init }, section "___ksymtab_gpl+hrtimer_init", align 4
@__kstrtab_hrtimer_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_active = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_active to i32), ptr @__kstrtab_hrtimer_active, ptr @__kstrtabns_hrtimer_active }, section "___ksymtab_gpl+hrtimer_active", align 4
@hrtimer_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@hrtimer_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 1869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014hrtimer: interrupt took %llu ns\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hrtimer_interrupt\00", [46 x i8] zeroinitializer }, align 32
@hrtimer_interrupt._entry_ptr = internal global ptr @hrtimer_interrupt._entry, section ".printk_index", align 4
@__kstrtab_hrtimer_sleeper_start_expires = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_sleeper_start_expires = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_sleeper_start_expires = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_sleeper_start_expires to i32), ptr @__kstrtab_hrtimer_sleeper_start_expires, ptr @__kstrtabns_hrtimer_sleeper_start_expires }, section "___ksymtab_gpl+hrtimer_sleeper_start_expires", align 4
@__kstrtab_hrtimer_init_sleeper = external dso_local constant [0 x i8], align 1
@__kstrtabns_hrtimer_init_sleeper = external dso_local constant [0 x i8], align 1
@__ksymtab_hrtimer_init_sleeper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hrtimer_init_sleeper to i32), ptr @__kstrtab_hrtimer_init_sleeper, ptr @__kstrtabns_hrtimer_init_sleeper }, section "___ksymtab_gpl+hrtimer_init_sleeper", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_nanosleep_time32\00", [37 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__nanosleep_time32 = internal global %struct.syscall_metadata { ptr @.str.6, i32 -1, i32 2, ptr @types__nanosleep_time32, ptr @args__nanosleep_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__nanosleep_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__nanosleep_time32, i64 20) }, ptr @event_enter__nanosleep_time32, ptr @event_exit__nanosleep_time32 }, align 4
@event_enter__nanosleep_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__nanosleep_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__nanosleep_time32 = internal global ptr @event_enter__nanosleep_time32, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_nanosleep_time32\00", [38 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__nanosleep_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__nanosleep_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__nanosleep_time32 = internal global ptr @event_exit__nanosleep_time32, section "_ftrace_events", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_nanosleep_time32\00", [43 x i8] zeroinitializer }, align 32
@types__nanosleep_time32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@args__nanosleep_time32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__nanosleep_time32 = internal global ptr @__syscall_meta__nanosleep_time32, section "__syscalls_metadata", align 4
@hrtimers_prepare_cpu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_schedule_hrtimeout_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_hrtimeout_range = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_hrtimeout_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_hrtimeout_range to i32), ptr @__kstrtab_schedule_hrtimeout_range, ptr @__kstrtabns_schedule_hrtimeout_range }, section "___ksymtab_gpl+schedule_hrtimeout_range", align 4
@__kstrtab_schedule_hrtimeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_hrtimeout = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_hrtimeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_hrtimeout to i32), ptr @__kstrtab_schedule_hrtimeout, ptr @__kstrtabns_schedule_hrtimeout }, section "___ksymtab_gpl+schedule_hrtimeout", align 4
@__pcpu_scope_hrtimer_bases = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_hrtimer_bases = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hrtimer\00", [24 x i8] zeroinitializer }, align 32
@hrtimer_hres_enabled = internal global i8 1, section ".data..read_mostly", align 1
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hrtimer_work\00", [19 x i8] zeroinitializer }, align 32
@migration_cpu_base = internal global %struct.hrtimer_cpu_base { %struct.raw_spinlock zeroinitializer, i32 0, i32 0, i32 0, i8 0, i32 0, i16 0, i16 0, i32 0, i64 0, ptr null, i64 0, ptr null, [8 x %struct.hrtimer_clock_base] [%struct.hrtimer_clock_base { ptr @migration_cpu_base, i32 0, i32 0, %struct.seqcount_raw_spinlock { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr @migration_cpu_base }, ptr null, %struct.timerqueue_head zeroinitializer, ptr null, i64 0 }, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer], [88 x i8] undef }, align 128
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"migration_cpu_base.seq.seqcount\00", [32 x i8] zeroinitializer }, align 32
@timers_migration_enabled = external dso_local global %struct.static_key_false, align 4
@__tracepoint_hrtimer_start = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/timer.h\00", [35 x i8] zeroinitializer }, align 32
@trace_hrtimer_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@hrtimer_reprogram.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_hrtimer_cancel = external dso_local global %struct.tracepoint, align 4
@trace_hrtimer_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hrtimer_clock_to_base_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 2, i32 8, i32 8, i32 8, i32 3, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid clockid %d. Using MONOTONIC\0A\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_hrtimer_init = external dso_local global %struct.tracepoint, align 4
@trace_hrtimer_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__run_hrtimer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_hrtimer_expire_entry = external dso_local global %struct.tracepoint, align 4
@trace_hrtimer_expire_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_hrtimer_expire_exit = external dso_local global %struct.tracepoint, align 4
@trace_hrtimer_expire_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hrtimer_switch_to_hres._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.1, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014Could not switch to high resolution mode on CPU %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hrtimer_switch_to_hres\00", [41 x i8] zeroinitializer }, align 32
@hrtimer_switch_to_hres._entry_ptr = internal global ptr @hrtimer_switch_to_hres._entry, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct old_timespec32 *\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rqtp\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmtp\00", [27 x i8] zeroinitializer }, align 32
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 70, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"hrtimer_debug_descr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 404, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"hrtimer_work\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1006, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1869, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [30 x i8] c"event_enter__nanosleep_time32\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [29 x i8] c"event_exit__nanosleep_time32\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"types__nanosleep_time32\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"args__nanosleep_time32\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2169, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 405, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 108, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 988, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 140, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant [32 x i8] c"../include/trace/events/timer.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 195, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"hrtimer_clock_to_base_table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 116, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1537, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 740, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 57, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [25 x i8] c"../kernel/time/hrtimer.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 2139, i32 1 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__event_enter__nanosleep_time32, ptr @__event_exit__nanosleep_time32, ptr @__ksymtab___hrtimer_get_remaining, ptr @__ksymtab___ktime_divns, ptr @__ksymtab_destroy_hrtimer_on_stack, ptr @__ksymtab_hrtimer_active, ptr @__ksymtab_hrtimer_cancel, ptr @__ksymtab_hrtimer_forward, ptr @__ksymtab_hrtimer_init, ptr @__ksymtab_hrtimer_init_on_stack, ptr @__ksymtab_hrtimer_init_sleeper, ptr @__ksymtab_hrtimer_init_sleeper_on_stack, ptr @__ksymtab_hrtimer_resolution, ptr @__ksymtab_hrtimer_sleeper_start_expires, ptr @__ksymtab_hrtimer_start_range_ns, ptr @__ksymtab_hrtimer_try_to_cancel, ptr @__ksymtab_ktime_add_safe, ptr @__ksymtab_schedule_hrtimeout, ptr @__ksymtab_schedule_hrtimeout_range, ptr @__p_syscall_meta__nanosleep_time32, ptr @__setup_setup_hrtimer_hres, ptr @__syscall_meta__nanosleep_time32, ptr @event_enter__nanosleep_time32, ptr @event_exit__nanosleep_time32, ptr @hrtimer_interrupt._entry, ptr @hrtimer_interrupt._entry_ptr, ptr @hrtimer_switch_to_hres._entry, ptr @hrtimer_switch_to_hres._entry_ptr, ptr @.str, ptr @hrtimer_debug_descr, ptr @hrtimer_work, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @types__nanosleep_time32, ptr @args__nanosleep_time32, ptr @hrtimers_prepare_cpu.__key, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @hrtimer_clock_to_base_table, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrtimer_debug_descr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrtimer_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrtimer_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__nanosleep_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__nanosleep_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__nanosleep_time32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__nanosleep_time32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrtimers_prepare_cpu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrtimer_clock_to_base_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrtimer_switch_to_hres._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_nanosleep_time32 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_nanosleep_time32

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ktime_get_real() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i64 @ktime_get_with_offset(i32 noundef 0) #12
  ret i64 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ktime_get_boottime() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i64 @ktime_get_with_offset(i32 noundef 1) #12
  ret i64 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ktime_get_clocktai() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i64 @ktime_get_with_offset(i32 noundef 2) #12
  ret i64 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__ktime_divns(i64 noundef %kt, i64 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.abs.i64(i64 %kt, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %div)
  %tobool.not314 = icmp ult i64 %div, 4294967296
  %extract.t = trunc i64 %div to i32
  br i1 %tobool.not314, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %div.addr.0316 = phi i64 [ %shr1, %while.body.while.body_crit_edge ], [ %div, %entry.while.body_crit_edge ]
  %sft.0315 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add i32 %sft.0315, 1
  %shr1 = ashr i64 %div.addr.0316, 1
  %tobool.not = icmp ult i64 %div.addr.0316, 8589934592
  br i1 %tobool.not, label %while.end.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %extract.t318 = trunc i64 %shr1 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %sft.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %while.end.loopexit ]
  %div.addr.0.lcssa.off0 = phi i32 [ %extract.t, %entry.while.end_crit_edge ], [ %extract.t318, %while.end.loopexit ]
  %sh_prom = zext i32 %sft.0.lcssa to i64
  %shr2 = lshr i64 %0, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr2)
  %cmp180 = icmp ult i64 %shr2, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !140

if.then184:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv185 = trunc i64 %shr2 to i32
  %div188 = udiv i32 %conv185, %div.addr.0.lcssa.off0
  %conv189 = zext i32 %div188 to i64
  br label %if.end194

if.else190:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.addr.0.lcssa.off0, i64 %shr2) #15, !srcloc !141
  %asmresult1.i = extractvalue { i64, i64 } %1, 1
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %tmp.0 = phi i64 [ %conv189, %if.then184 ], [ %asmresult1.i, %if.else190 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %kt)
  %cmp = icmp slt i64 %kt, 0
  %sub199 = sub i64 0, %tmp.0
  %spec.select = select i1 %cmp, i64 %sub199, i64 %tmp.0
  ret i64 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ktime_add_safe(i64 noundef %lhs, i64 noundef %rhs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %rhs, %lhs
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp = icmp slt i64 %add, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %lhs)
  %cmp1 = icmp slt i64 %add, %lhs
  %or.cond = or i1 %cmp, %cmp1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %rhs)
  %cmp3 = icmp slt i64 %add, %rhs
  %or.cond9 = or i1 %cmp3, %or.cond
  %spec.select = select i1 %or.cond9, i64 9223372036854775807, i64 %add
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_init_on_stack(ptr noundef %timer, i32 noundef %clock_id, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_init_on_stack(ptr noundef %timer, ptr noundef nonnull @hrtimer_debug_descr) #12
  %0 = call ptr @memset(ptr %timer, i32 0, i32 48)
  %1 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock_id)
  %cmp.i = icmp eq i32 %clock_id, 0
  %and3.i = and i32 %mode, 1
  %clock_id.addr.0.i = select i1 %cmp.i, i32 %and3.i, i32 %clock_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %clock_id.addr.0.i)
  %cmp.i.i = icmp slt i32 %clock_id.addr.0.i, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.do.end.i.i_crit_edge, !prof !140

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %entry
  %arrayidx.i.i = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %clock_id.addr.0.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %9 = and i32 %clock_id.addr.0.i, 1073741823
  %10 = lshr i32 63356, %9
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not.not.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp2.not.not.not.i.i, label %if.then.i.i.__hrtimer_init.exit_crit_edge, label %if.then.i.i.do.end.i.i_crit_edge

if.then.i.i.do.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i.__hrtimer_init.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_init.exit

do.end.i.i:                                       ; preds = %if.then.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %clock_id.addr.0.i) #12
  br label %__hrtimer_init.exit

__hrtimer_init.exit:                              ; preds = %do.end.i.i, %if.then.i.i.__hrtimer_init.exit_crit_edge
  %retval.1.i.i = phi i32 [ %8, %if.then.i.i.__hrtimer_init.exit_crit_edge ], [ 0, %do.end.i.i ]
  %and.i = and i32 %mode, 4
  %and.lobit.i = lshr exact i32 %and.i, 2
  %12 = trunc i32 %and.lobit.i to i8
  %add.i = add i32 %6, ptrtoint (ptr @hrtimer_bases to i32)
  %13 = inttoptr i32 %add.i to ptr
  %add7.i = add i32 %retval.1.i.i, %and.i
  %is_soft.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 6
  %14 = ptrtoint ptr %is_soft.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %is_soft.i, align 2
  %15 = trunc i32 %mode to i8
  %16 = lshr i8 %15, 3
  %17 = and i8 %16, 1
  %is_hard.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 7
  %18 = ptrtoint ptr %is_hard.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %is_hard.i, align 1
  %arrayidx14.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %add7.i
  %base15.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %19 = ptrtoint ptr %base15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx14.i, ptr %base15.i, align 4
  %20 = ptrtoint ptr %timer to i32
  %21 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %timer, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_init_on_stack(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_init_sleeper_on_stack(ptr noundef %sl, i32 noundef %clock_id, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_init_on_stack(ptr noundef %sl, ptr noundef nonnull @hrtimer_debug_descr) #12
  %0 = call ptr @memset(ptr %sl, i32 0, i32 48)
  %1 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock_id)
  %cmp.i.i = icmp eq i32 %clock_id, 0
  %and3.i.i = and i32 %mode, 1
  %clock_id.addr.0.i.i = select i1 %cmp.i.i, i32 %and3.i.i, i32 %clock_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %clock_id.addr.0.i.i)
  %cmp.i.i.i = icmp slt i32 %clock_id.addr.0.i.i, 16
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %entry.do.end.i.i.i_crit_edge, !prof !140

entry.do.end.i.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  %arrayidx.i.i.i = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %clock_id.addr.0.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  %9 = and i32 %clock_id.addr.0.i.i, 1073741823
  %10 = lshr i32 63356, %9
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not.not.not.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp2.not.not.not.i.i.i, label %if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge, label %if.then.i.i.i.do.end.i.i.i_crit_edge

if.then.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_init_sleeper.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i.i.do.end.i.i.i_crit_edge, %entry.do.end.i.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %clock_id.addr.0.i.i) #12
  br label %__hrtimer_init_sleeper.exit

__hrtimer_init_sleeper.exit:                      ; preds = %do.end.i.i.i, %if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge
  %retval.1.i.i.i = phi i32 [ %8, %if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge ], [ 0, %do.end.i.i.i ]
  %and.i.i = and i32 %mode, 4
  %and.lobit.i.i = lshr exact i32 %and.i.i, 2
  %12 = trunc i32 %and.lobit.i.i to i8
  %add.i.i = add i32 %6, ptrtoint (ptr @hrtimer_bases to i32)
  %13 = inttoptr i32 %add.i.i to ptr
  %add7.i.i = add i32 %retval.1.i.i.i, %and.i.i
  %is_soft.i.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 6
  %14 = ptrtoint ptr %is_soft.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %is_soft.i.i, align 2
  %15 = trunc i32 %mode to i8
  %16 = lshr i8 %15, 3
  %17 = and i8 %16, 1
  %is_hard.i.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 7
  %18 = ptrtoint ptr %is_hard.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %is_hard.i.i, align 1
  %arrayidx14.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %add7.i.i
  %base15.i.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 3
  %19 = ptrtoint ptr %base15.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx14.i.i, ptr %base15.i.i, align 4
  %20 = ptrtoint ptr %sl to i32
  %21 = ptrtoint ptr %sl to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sl, align 8
  %function.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 2
  %22 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hrtimer_wakeup, ptr %function.i, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i5.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i5.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %task2.i = getelementptr inbounds %struct.hrtimer_sleeper, ptr %sl, i32 0, i32 1
  %27 = ptrtoint ptr %task2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %task2.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @destroy_hrtimer_on_stack(ptr noundef %timer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_free(ptr noundef %timer, ptr noundef nonnull @hrtimer_debug_descr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_hrtimer_hres(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %str, ptr noundef nonnull @hrtimer_hres_enabled) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clock_was_set(i32 noundef %bases) local_unnamed_addr #5 align 64 {
entry:
  %mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !142
  %hres_active.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %8 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %hres_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_nohz_active to i32))
  %9 = load i32, ptr @tick_nohz_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.out_timerfd_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.out_timerfd_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_timerfd

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #12
  br i1 %call5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @retrigger_next_event, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #12
  br label %out_timerfd

if.end7:                                          ; preds = %if.end
  call void @cpus_read_lock() #12
  %call854 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call854, i32 %10)
  %cmp55 = icmp ult i32 %call854, %10
  br i1 %cmp55, label %if.end7.for.body_crit_edge, label %if.end7.do.body36_crit_edge

if.end7.do.body36_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

for.body:                                         ; preds = %do.body27.for.body_crit_edge, %if.end7.for.body_crit_edge
  %call856 = phi i32 [ %call8, %do.body27.for.body_crit_edge ], [ %call854, %if.end7.for.body_crit_edge ]
  %arrayidx16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call856
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %12, ptrtoint (ptr @hrtimer_bases to i32)
  %13 = inttoptr i32 %add17 to ptr
  %call21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #12
  %clock_was_set_seq.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %clock_was_set_seq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_was_set_seq.i, align 4
  %offset.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 1, i32 7
  %offset3.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 2, i32 7
  %offset6.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 3, i32 7
  %call.i.i = call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i.i, ptr noundef %offset3.i.i, ptr noundef %offset6.i.i) #12
  %16 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset.i.i, align 8
  %offset9.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 5, i32 7
  %18 = ptrtoint ptr %offset9.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %offset9.i.i, align 8
  %19 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset3.i.i, align 8
  %offset12.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 6, i32 7
  %21 = ptrtoint ptr %offset12.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %offset12.i.i, align 8
  %22 = ptrtoint ptr %offset6.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offset6.i.i, align 8
  %offset15.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 7, i32 7
  %24 = ptrtoint ptr %offset15.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %offset15.i.i, align 8
  %25 = ptrtoint ptr %clock_was_set_seq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock_was_set_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %26)
  %cmp.i = icmp eq i32 %15, %26
  br i1 %cmp.i, label %for.body.do.body27_crit_edge, label %if.end.i

for.body.do.body27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

if.end.i:                                         ; preds = %for.body
  %in_hrtirq.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 4
  %27 = ptrtoint ptr %in_hrtirq.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i50 = load i8, ptr %in_hrtirq.i, align 8
  %28 = and i8 %bf.load.i50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.do.body27_crit_edge

if.end.i.do.body27_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

if.end3.i:                                        ; preds = %if.end.i
  %active_bases.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 2
  %29 = ptrtoint ptr %active_bases.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active_bases.i, align 16
  %and.i51 = and i32 %30, %bases
  %softirq_expires_next.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i44.i = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i44.i, label %if.end3.i.do.body27_crit_edge, label %__next_base.exit.lr.ph.i

if.end3.i.do.body27_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

__next_base.exit.lr.ph.i:                         ; preds = %if.end3.i
  %expires_next.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 9
  %31 = and i8 %bf.load.i50, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool19.not.i = icmp eq i8 %31, 0
  br label %__next_base.exit.i

__next_base.exit.i:                               ; preds = %cleanup.i.__next_base.exit.i_crit_edge, %__next_base.exit.lr.ph.i
  %active.addr.045.i = phi i32 [ %and.i51, %__next_base.exit.lr.ph.i ], [ %and.i.i, %cleanup.i.__next_base.exit.i_crit_edge ]
  %32 = call i32 @llvm.cttz.i32(i32 %active.addr.045.i, i1 true) #12, !range !143
  %shl.i.i = shl nuw i32 1, %32
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %active.addr.045.i, %neg.i.i
  %arrayidx.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %32
  %tobool5.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool5.not.i, label %__next_base.exit.i.do.body27_crit_edge, label %while.body.i

__next_base.exit.i.do.body27_crit_edge:           ; preds = %__next_base.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

while.body.i:                                     ; preds = %__next_base.exit.i
  %rb_leftmost.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %32, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rb_leftmost.i.i, align 4
  %expires8.i = getelementptr inbounds %struct.timerqueue_node, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %expires8.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %expires8.i, align 8
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %32, i32 7
  %37 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset.i, align 8
  %sub.i52 = sub i64 %36, %38
  %39 = ptrtoint ptr %expires_next.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %expires_next.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i52, i64 %40)
  %cmp9.i = icmp slt i64 %sub.i52, %40
  br i1 %cmp9.i, label %while.body.i.if.then25_crit_edge, label %if.end11.i

while.body.i.if.then25_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.end11.i:                                       ; preds = %while.body.i
  %clockid.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %32, i32 2
  %41 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clockid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp12.i = icmp sgt i32 %42, 3
  %or.cond.i = select i1 %cmp12.i, i1 %tobool19.not.i, i1 false
  br i1 %or.cond.i, label %if.end21.i, label %if.end11.i.cleanup.i_crit_edge

if.end11.i.cleanup.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end21.i:                                       ; preds = %if.end11.i
  %43 = ptrtoint ptr %softirq_expires_next.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %softirq_expires_next.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i52, i64 %44)
  %cmp22.i = icmp slt i64 %sub.i52, %44
  br i1 %cmp22.i, label %if.end21.i.if.then25_crit_edge, label %if.end21.i.cleanup.i_crit_edge

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end21.i.if.then25_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

cleanup.i:                                        ; preds = %if.end21.i.cleanup.i_crit_edge, %if.end11.i.cleanup.i_crit_edge
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.i.do.body27_crit_edge, label %cleanup.i.__next_base.exit.i_crit_edge

cleanup.i.__next_base.exit.i_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i

cleanup.i.do.body27_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

if.then25:                                        ; preds = %if.end21.i.if.then25_crit_edge, %while.body.i.if.then25_crit_edge
  %45 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %47 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %call856)
  %cmp.not.i.i.i = icmp ugt i32 %47, %call856
  br i1 %cmp.not.i.i.i, label %if.then25.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then25.cpumask_set_cpu.exit_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then25
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !140

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then25.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %call856, ptr noundef %46) #12
  br label %do.body27

do.body27:                                        ; preds = %cpumask_set_cpu.exit, %cleanup.i.do.body27_crit_edge, %__next_base.exit.i.do.body27_crit_edge, %if.end3.i.do.body27_crit_edge, %if.end.i.do.body27_crit_edge, %for.body.do.body27_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call21) #12
  %call8 = call i32 @cpumask_next(i32 noundef %call856, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %48
  br i1 %cmp, label %do.body27.for.body_crit_edge, label %do.body27.do.body36_crit_edge

do.body27.do.body36_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

do.body27.for.body_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body36:                                        ; preds = %do.body27.do.body36_crit_edge, %if.end7.do.body36_crit_edge
  %49 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %52, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %53 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mask, align 4
  call void @smp_call_function_many(ptr noundef %54, ptr noundef nonnull @retrigger_next_event, ptr noundef null, i1 noundef zeroext true) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !145
  %55 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i48 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i48 to ptr
  %preempt_count.i.i49 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i49, align 4
  %sub.i = add i32 %58, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i49, align 4
  call void @cpus_read_unlock() #12
  %59 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %60) #12
  br label %out_timerfd

out_timerfd:                                      ; preds = %do.body36, %if.then6, %land.lhs.true.out_timerfd_crit_edge
  call void @timerfd_clock_was_set() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @retrigger_next_event(ptr nocapture noundef readnone %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %hres_active.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %hres_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_nohz_active to i32))
  %8 = load i32, ptr @tick_nohz_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 1, i32 7
  %offset3.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 2, i32 7
  %offset6.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 3, i32 7
  %clock_was_set_seq.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 3
  %call.i = tail call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i, ptr noundef %offset3.i, ptr noundef %offset6.i) #12
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset.i, align 8
  %offset9.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 5, i32 7
  %11 = ptrtoint ptr %offset9.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %offset9.i, align 8
  %12 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset3.i, align 8
  %offset12.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 6, i32 7
  %14 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %offset12.i, align 8
  %15 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset6.i, align 8
  %offset15.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 7, i32 7
  %17 = ptrtoint ptr %offset15.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %offset15.i, align 8
  %18 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i18 = load i8, ptr %hres_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i18)
  %tobool6.not = icmp sgt i8 %bf.load.i18, -1
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call.i21 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6) #12
  %expires_next1.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 9
  %19 = ptrtoint ptr %expires_next1.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i21, ptr %expires_next1.i.i, align 8
  %20 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i.i = load i8, ptr %hres_active.i, align 8
  %21 = and i8 %bf.load.i.i.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %21)
  %22 = icmp eq i8 %21, -128
  br i1 %22, label %if.end.i.i, label %if.then7.if.end9_crit_edge

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = tail call i32 @tick_program_event(i64 noundef %call.i21, i32 noundef 1) #12
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end.i.i, %if.then7.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @timerfd_clock_was_set() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clock_was_set_delayed() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @hrtimer_work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimers_resume_local() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end86_crit_edge, label %land.lhs.true

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %5 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !147
  %14 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i102 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i102 to ptr
  %preempt_count.i.i103 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i103 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i103, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i104 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i104 to ptr
  %preempt_count.i.i105 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i105, align 4
  %add.i106 = add i32 %21, 1
  store volatile i32 %add.i106, ptr %preempt_count.i.i105, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !148
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !149
  %29 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i107 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i107 to ptr
  %preempt_count.i.i108 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i108, align 4
  %sub.i109 = add i32 %32, -1
  store volatile i32 %sub.i109, ptr %preempt_count.i.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %land.rhs.if.end86_crit_edge, label %land.rhs55

land.rhs.if.end86_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.rhs55:                                       ; preds = %land.rhs
  %.b98 = load i1, ptr @hrtimers_resume_local.__already_done, align 1
  br i1 %.b98, label %land.rhs55.if.end86_crit_edge, label %if.then, !prof !140

land.rhs55.if.end86_crit_edge:                    ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then:                                          ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hrtimers_resume_local.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1006, i32 noundef 9, ptr noundef null) #12
  br label %if.end86

if.end86:                                         ; preds = %if.then, %land.rhs55.if.end86_crit_edge, %land.rhs.if.end86_crit_edge, %land.lhs.true.if.end86_crit_edge, %entry.if.end86_crit_edge
  tail call void @retrigger_next_event(ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hrtimer_forward(ptr nocapture noundef %timer, i64 noundef %now, i64 noundef %interval) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %expires.i, align 8
  %sub = sub i64 %now, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !140

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1047, i32 noundef 9, ptr noundef null) #12
  br label %cleanup48

if.end24:                                         ; preds = %if.end
  %5 = load i32, ptr @hrtimer_resolution, align 4
  %conv25 = zext i32 %5 to i64
  %6 = tail call i64 @llvm.smax.i64(i64 %conv25, i64 %interval)
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %6)
  %cmp31.not = icmp ult i64 %sub, %6
  br i1 %cmp31.not, label %if.end24.if.end47_crit_edge, label %if.then39, !prof !140

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then39:                                        ; preds = %if.end24
  %call41 = tail call fastcc i64 @ktime_divns(i64 noundef %sub, i64 noundef %6)
  %mul = mul i64 %call41, %6
  %7 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %expires.i, align 8
  %add.i = add i64 %8, %mul
  store i64 %add.i, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 1
  %9 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %_softexpires.i, align 8
  %add3.i = add i64 %10, %mul
  store i64 %add3.i, ptr %_softexpires.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %now)
  %cmp43 = icmp sgt i64 %add.i, %now
  %inc = add i64 %call41, 1
  br i1 %cmp43, label %if.then39.cleanup48_crit_edge, label %if.then39.if.end47_crit_edge

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then39.cleanup48_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

if.end47:                                         ; preds = %if.then39.if.end47_crit_edge, %if.end24.if.end47_crit_edge
  %orun.1 = phi i64 [ %inc, %if.then39.if.end47_crit_edge ], [ 1, %if.end24.if.end47_crit_edge ]
  %11 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %expires.i, align 8
  %add.i.i = add i64 %12, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i)
  %cmp.i.i = icmp slt i64 %add.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %12)
  %cmp1.i.i = icmp slt i64 %add.i.i, %12
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %6)
  %cmp3.i.i = icmp slt i64 %add.i.i, %6
  %or.cond9.i.i = or i1 %cmp3.i.i, %or.cond.i.i
  %spec.select.i.i = select i1 %or.cond9.i.i, i64 9223372036854775807, i64 %add.i.i
  %13 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %spec.select.i.i, ptr %expires.i, align 8
  %_softexpires.i68 = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 1
  %14 = ptrtoint ptr %_softexpires.i68 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %_softexpires.i68, align 8
  %add.i9.i = add i64 %15, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i9.i)
  %cmp.i10.i = icmp slt i64 %add.i9.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i9.i, i64 %15)
  %cmp1.i11.i = icmp slt i64 %add.i9.i, %15
  %or.cond.i12.i = or i1 %cmp.i10.i, %cmp1.i11.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i9.i, i64 %6)
  %cmp3.i13.i = icmp slt i64 %add.i9.i, %6
  %or.cond9.i14.i = or i1 %cmp3.i13.i, %or.cond.i12.i
  %spec.select.i15.i = select i1 %or.cond9.i14.i, i64 9223372036854775807, i64 %add.i9.i
  %16 = ptrtoint ptr %_softexpires.i68 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %spec.select.i15.i, ptr %_softexpires.i68, align 8
  br label %cleanup48

cleanup48:                                        ; preds = %if.end47, %if.then39.cleanup48_crit_edge, %do.end, %entry.cleanup48_crit_edge
  %retval.1 = phi i64 [ 0, %do.end ], [ %orun.1, %if.end47 ], [ %call41, %if.then39.cleanup48_crit_edge ], [ 0, %entry.cleanup48_crit_edge ]
  ret i64 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %div)
  %cmp = icmp slt i64 %div, 0
  br i1 %cmp, label %do.body2, label %if.else214, !prof !150

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ktime.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

if.else214:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %div)
  %tobool6.not = icmp ult i64 %div, 4294967296
  %0 = tail call i64 @llvm.abs.i64(i64 %kt, i1 false) #12
  %extract.t = trunc i64 %div to i32
  br i1 %tobool6.not, label %if.else214.while.end.i_crit_edge, label %if.else214.while.body.i_crit_edge

if.else214.while.body.i_crit_edge:                ; preds = %if.else214
  br label %while.body.i

if.else214.while.end.i_crit_edge:                 ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else214.while.body.i_crit_edge
  %div.addr.0316.i = phi i64 [ %shr1.i, %while.body.i.while.body.i_crit_edge ], [ %div, %if.else214.while.body.i_crit_edge ]
  %sft.0315.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.else214.while.body.i_crit_edge ]
  %inc.i = add i32 %sft.0315.i, 1
  %shr1.i = ashr i64 %div.addr.0316.i, 1
  %tobool.not.i = icmp ult i64 %div.addr.0316.i, 8589934592
  br i1 %tobool.not.i, label %while.end.i.loopexit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i.loopexit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %extract.t328 = trunc i64 %shr1.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.else214.while.end.i_crit_edge
  %sft.0.lcssa.i = phi i32 [ 0, %if.else214.while.end.i_crit_edge ], [ %inc.i, %while.end.i.loopexit ]
  %div.addr.0.lcssa.i.off0 = phi i32 [ %extract.t, %if.else214.while.end.i_crit_edge ], [ %extract.t328, %while.end.i.loopexit ]
  %sh_prom.i = zext i32 %sft.0.lcssa.i to i64
  %shr2.i = lshr i64 %0, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr2.i)
  %cmp180.i = icmp ult i64 %shr2.i, 4294967296
  br i1 %cmp180.i, label %if.then184.i, label %if.else190.i, !prof !140

if.then184.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv185.i = trunc i64 %shr2.i to i32
  %div188.i = udiv i32 %conv185.i, %div.addr.0.lcssa.i.off0
  %conv189.i = zext i32 %div188.i to i64
  br label %return

if.else190.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.addr.0.lcssa.i.off0, i64 %shr2.i) #15, !srcloc !141
  %asmresult1.i.i = extractvalue { i64, i64 } %1, 1
  br label %return

return:                                           ; preds = %if.else190.i, %if.then184.i
  %tmp.0.i = phi i64 [ %conv189.i, %if.then184.i ], [ %asmresult1.i.i, %if.else190.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %kt)
  %cmp.i = icmp slt i64 %kt, 0
  %sub199.i = sub i64 0, %tmp.0.i
  %spec.select.i = select i1 %cmp.i, i64 %sub199.i, i64 %tmp.0.i
  ret i64 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %tim, i64 noundef %delta_ns, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %mode, 2
  %and.lobit = and i32 %and, 1
  %is_soft = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 6
  %0 = ptrtoint ptr %is_soft to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_soft, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %lnot.ext3 = zext i1 %tobool1.not to i32
  %2 = xor i32 %and.lobit, %lnot.ext3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %tobool4.not = icmp eq i32 %2, 1
  br i1 %tobool4.not, label %entry.if.end38_crit_edge, label %land.rhs

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.rhs:                                         ; preds = %entry
  %.b57 = load i1, ptr @hrtimer_start_range_ns.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end38_crit_edge, label %if.then, !prof !140

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hrtimer_start_range_ns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1292, i32 noundef 9, ptr noundef null) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then, %land.rhs.if.end38_crit_edge, %entry.if.end38_crit_edge
  %base1.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %do.end33.i, %if.end38
  %3 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %base1.i, align 4
  %cmp.not.i = icmp eq ptr %4, getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13)
  br i1 %cmp.not.i, label %for.cond.i.do.end33.i_crit_edge, label %do.body3.i, !prof !150

for.cond.i.do.end33.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

do.body3.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %7 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base1.i, align 4
  %cmp9.i = icmp eq ptr %4, %8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 8
  br i1 %cmp9.i, label %lock_hrtimer_base.exit, label %do.body18.i, !prof !140

do.body18.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call.i) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.body18.i, %for.cond.i.do.end33.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !152
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !153
  br label %for.cond.i

lock_hrtimer_base.exit:                           ; preds = %do.body3.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @hrtimer_bases to i32)
  %17 = inttoptr i32 %add.i to ptr
  %cmp.i = icmp eq ptr %10, %17
  %next_timer.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %10, i32 0, i32 10
  %18 = ptrtoint ptr %next_timer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next_timer.i, align 16
  %cmp3.i = icmp eq ptr %19, %timer
  %and49.i = and i1 %cmp3.i, %cmp.i
  %state2.i.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 4
  %20 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state2.i.i, align 8
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %lock_hrtimer_base.exit.remove_hrtimer.exit.i_crit_edge, label %if.then.i.i

lock_hrtimer_base.exit.remove_hrtimer.exit.i_crit_edge: ; preds = %lock_hrtimer_base.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_hrtimer.exit.i

if.then.i.i:                                      ; preds = %lock_hrtimer_base.exit
  tail call void @debug_object_deactivate(ptr noundef %timer, ptr noundef nonnull @hrtimer_debug_descr) #12
  tail call fastcc void @trace_hrtimer_cancel(ptr noundef %timer) #12
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %30, ptrtoint (ptr @hrtimer_bases to i32)
  %31 = inttoptr i32 %add.i.i to ptr
  %cmp.i.i = icmp ne ptr %24, %31
  %32 = or i1 %and49.i, %cmp.i.i
  %33 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %state2.i.i, align 8
  store volatile i8 %21, ptr %state2.i.i, align 8
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.remove_hrtimer.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.remove_hrtimer.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_hrtimer.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %active.i.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %4, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @timerqueue_del(ptr noundef %active.i.i.i, ptr noundef %timer) #12
  br i1 %call.i.i.i, label %if.end.i.i.i.if.end12.i.i.i_crit_edge, label %if.then10.i.i.i

if.end.i.i.i.if.end12.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %index.i.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %4, i32 0, i32 1
  %36 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %37
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %active_bases.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 2
  %38 = ptrtoint ptr %active_bases.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %active_bases.i.i.i, align 16
  %and11.i.i.i = and i32 %39, %neg.i.i.i
  store i32 %and11.i.i.i, ptr %active_bases.i.i.i, align 16
  br label %if.end12.i.i.i

if.end12.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i.if.end12.i.i.i_crit_edge
  br i1 %32, label %if.end12.i.i.i.remove_hrtimer.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end12.i.i.i.remove_hrtimer.exit.i_crit_edge:   ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_hrtimer.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end12.i.i.i
  %next_timer.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 10
  %40 = ptrtoint ptr %next_timer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next_timer.i.i.i, align 16
  %cmp.i.i.i = icmp eq ptr %41, %timer
  br i1 %cmp.i.i.i, label %if.then15.i.i.i, label %land.lhs.true.i.i.i.remove_hrtimer.exit.i_crit_edge

land.lhs.true.i.i.i.remove_hrtimer.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_hrtimer.exit.i

if.then15.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %24) #12
  %expires_next1.i.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 9
  %42 = ptrtoint ptr %expires_next1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %expires_next1.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i.i, i64 %43)
  %cmp.i.i.i.i = icmp eq i64 %call.i.i.i.i, %43
  br i1 %cmp.i.i.i.i, label %if.then15.i.i.i.remove_hrtimer.exit.i_crit_edge, label %if.end.i.i.i.i

if.then15.i.i.i.remove_hrtimer.exit.i_crit_edge:  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_hrtimer.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then15.i.i.i
  %44 = ptrtoint ptr %expires_next1.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call.i.i.i.i, ptr %expires_next1.i.i.i.i, align 8
  %hres_active.i.i.i.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 4
  %45 = ptrtoint ptr %hres_active.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i.i.i.i.i = load i8, ptr %hres_active.i.i.i.i.i.i, align 8
  %46 = and i8 %bf.load.i.i.i.i.i.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %46)
  %47 = icmp eq i8 %46, -128
  br i1 %47, label %if.end.i.i.i.i.i, label %if.end.i.i.i.i.remove_hrtimer.exit.i_crit_edge

if.end.i.i.i.i.remove_hrtimer.exit.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_hrtimer.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i.i.i.i = tail call i32 @tick_program_event(i64 noundef %call.i.i.i.i, i32 noundef 1) #12
  br label %remove_hrtimer.exit.i

remove_hrtimer.exit.i:                            ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.i.remove_hrtimer.exit.i_crit_edge, %if.then15.i.i.i.remove_hrtimer.exit.i_crit_edge, %land.lhs.true.i.i.i.remove_hrtimer.exit.i_crit_edge, %if.end12.i.i.i.remove_hrtimer.exit.i_crit_edge, %if.then.i.i.remove_hrtimer.exit.i_crit_edge, %lock_hrtimer_base.exit.remove_hrtimer.exit.i_crit_edge
  %and9.i = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %remove_hrtimer.exit.i.if.end.i_crit_edge, label %if.then.i

remove_hrtimer.exit.i.if.end.i_crit_edge:         ; preds = %remove_hrtimer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %remove_hrtimer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %4, i32 0, i32 6
  %48 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_time.i, align 4
  %call11.i = tail call i64 %49() #12
  %add.i50.i = add i64 %call11.i, %tim
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i50.i)
  %cmp.i51.i = icmp slt i64 %add.i50.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i50.i, i64 %tim)
  %cmp1.i.i = icmp slt i64 %add.i50.i, %tim
  %or.cond.i.i = or i1 %cmp.i51.i, %cmp1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i50.i, i64 %call11.i)
  %cmp3.i.i = icmp slt i64 %add.i50.i, %call11.i
  %or.cond9.i.i = or i1 %cmp3.i.i, %or.cond.i.i
  %spec.select.i.i = select i1 %or.cond9.i.i, i64 9223372036854775807, i64 %add.i50.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %remove_hrtimer.exit.i.if.end.i_crit_edge
  %tim.addr.0.i = phi i64 [ %spec.select.i.i, %if.then.i ], [ %tim, %remove_hrtimer.exit.i.if.end.i_crit_edge ]
  %_softexpires.i.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 1
  %50 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %tim.addr.0.i, ptr %_softexpires.i.i, align 8
  %add.i.i.i = add i64 %tim.addr.0.i, %delta_ns
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i.i)
  %cmp.i.i52.i = icmp slt i64 %add.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %tim.addr.0.i)
  %cmp1.i.i.i = icmp slt i64 %add.i.i.i, %tim.addr.0.i
  %or.cond.i.i.i = or i1 %cmp.i.i52.i, %cmp1.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %delta_ns)
  %cmp3.i.i.i = icmp slt i64 %add.i.i.i, %delta_ns
  %or.cond9.i.i.i = or i1 %cmp3.i.i.i, %or.cond.i.i.i
  %spec.select.i.i.i = select i1 %or.cond9.i.i.i, i64 9223372036854775807, i64 %add.i.i.i
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %51 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %spec.select.i.i.i, ptr %expires.i.i, align 8
  br i1 %and49.i, label %if.end.i.if.end18.i_crit_edge, label %if.then15.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %and16.i = and i32 %mode, 2
  %call17.i = tail call fastcc ptr @switch_hrtimer_base(ptr noundef %timer, ptr noundef %4, i32 noundef %and16.i) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end.i.if.end18.i_crit_edge
  %new_base.0.i = phi ptr [ %call17.i, %if.then15.i ], [ %4, %if.end.i.if.end18.i_crit_edge ]
  %call.i.i.i53.i = tail call i32 @debug_object_activate(ptr noundef %timer, ptr noundef nonnull @hrtimer_debug_descr) #12
  tail call fastcc void @trace_hrtimer_start(ptr noundef %timer, i32 noundef %mode) #12
  %index.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %new_base.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl nuw i32 1, %53
  %54 = ptrtoint ptr %new_base.0.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %new_base.0.i, align 8
  %active_bases.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %active_bases.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %active_bases.i.i, align 16
  %or.i.i = or i32 %57, %shl.i.i
  store i32 %or.i.i, ptr %active_bases.i.i, align 16
  %58 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store volatile i8 1, ptr %state2.i.i, align 8
  %active.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %new_base.0.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @timerqueue_add(ptr noundef %active.i.i, ptr noundef %timer) #12
  br i1 %and49.i, label %if.end26.i, label %__hrtimer_start_range_ns.exit

if.end26.i:                                       ; preds = %if.end18.i
  %59 = ptrtoint ptr %new_base.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %new_base.0.i, align 8
  %call.i54.i = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %60) #12
  %expires_next1.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %expires_next1.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %expires_next1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i54.i, i64 %62)
  %cmp.i55.i = icmp eq i64 %call.i54.i, %62
  br i1 %cmp.i55.i, label %if.end26.i.if.end49_crit_edge, label %if.end.i.i

if.end26.i.if.end49_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end.i.i:                                       ; preds = %if.end26.i
  %63 = ptrtoint ptr %expires_next1.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %call.i54.i, ptr %expires_next1.i.i, align 8
  %hres_active.i.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %60, i32 0, i32 4
  %64 = ptrtoint ptr %hres_active.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i.i.i.i = load i8, ptr %hres_active.i.i.i.i, align 8
  %65 = and i8 %bf.load.i.i.i.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %65)
  %66 = icmp eq i8 %65, -128
  br i1 %66, label %if.end.i.i56.i, label %if.end.i.i.if.end49_crit_edge

if.end.i.i.if.end49_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end.i.i56.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i.i = tail call i32 @tick_program_event(i64 noundef %call.i54.i, i32 noundef 1) #12
  br label %if.end49

__hrtimer_start_range_ns.exit:                    ; preds = %if.end18.i
  br i1 %call.i.i, label %if.then48, label %__hrtimer_start_range_ns.exit.if.end49_crit_edge

__hrtimer_start_range_ns.exit.if.end49_crit_edge: ; preds = %__hrtimer_start_range_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then48:                                        ; preds = %__hrtimer_start_range_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hrtimer_reprogram(ptr noundef %timer, i1 noundef zeroext true)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %__hrtimer_start_range_ns.exit.if.end49_crit_edge, %if.end.i.i56.i, %if.end.i.i.if.end49_crit_edge, %if.end26.i.if.end49_crit_edge
  %67 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base1.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %70, i32 noundef %call.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hrtimer_reprogram(ptr noundef %timer, i1 noundef zeroext %reprogram) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %base2 = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %7 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base2, align 4
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %9 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expires.i, align 8
  %offset = getelementptr inbounds %struct.hrtimer_clock_base, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset, align 8
  %sub = sub i64 %10, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp = icmp slt i64 %10, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %.b105 = load i1, ptr @hrtimer_reprogram.__already_done, align 1
  br i1 %.b105, label %land.rhs.if.end36_crit_edge, label %if.then, !prof !140

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hrtimer_reprogram.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 814, i32 noundef 9, ptr noundef null) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %13 = tail call i64 @llvm.smax.i64(i64 %sub, i64 0)
  %is_soft = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 6
  %14 = ptrtoint ptr %is_soft to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_soft, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool47.not = icmp eq i8 %15, 0
  br i1 %tobool47.not, label %if.end36.if.end61_crit_edge, label %if.then48

if.end36.if.end61_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then48:                                        ; preds = %if.end36
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 8
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %softirq_activated to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %softirq_activated, align 8
  %19 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool50.not = icmp eq i8 %19, 0
  br i1 %tobool50.not, label %if.end52, label %if.then48.cleanup77_crit_edge

if.then48.cleanup77_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end52:                                         ; preds = %if.then48
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %17, i32 0, i32 11
  %20 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %softirq_expires_next, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %21)
  %cmp.i.i = icmp slt i64 %13, %21
  br i1 %cmp.i.i, label %if.end55, label %if.end52.cleanup77_crit_edge

if.end52.cleanup77_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end55:                                         ; preds = %if.end52
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %17, i32 0, i32 12
  %22 = ptrtoint ptr %softirq_next_timer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %timer, ptr %softirq_next_timer, align 32
  %23 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %13, ptr %softirq_expires_next, align 8
  %expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %17, i32 0, i32 9
  %24 = ptrtoint ptr %expires_next to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %expires_next, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %25)
  %cmp.i.i107 = icmp slt i64 %13, %25
  %26 = and i1 %cmp.i.i107, %reprogram
  br i1 %26, label %if.end55.if.end61_crit_edge, label %if.end55.cleanup77_crit_edge

if.end55.cleanup77_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end61:                                         ; preds = %if.end55.if.end61_crit_edge, %if.end36.if.end61_crit_edge
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %8, align 8
  %cmp63.not = icmp eq ptr %28, %6
  br i1 %cmp63.not, label %if.end65, label %if.end61.cleanup77_crit_edge

if.end61.cleanup77_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end65:                                         ; preds = %if.end61
  %expires_next66 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 9
  %29 = ptrtoint ptr %expires_next66 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %expires_next66, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %30)
  %cmp67.not = icmp slt i64 %13, %30
  br i1 %cmp67.not, label %if.end69, label %if.end65.cleanup77_crit_edge

if.end65.cleanup77_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end69:                                         ; preds = %if.end65
  %in_hrtirq = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %31 = ptrtoint ptr %in_hrtirq to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load70 = load i8, ptr %in_hrtirq, align 8
  %32 = and i8 %bf.load70, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool74.not = icmp eq i8 %32, 0
  br i1 %tobool74.not, label %if.end76, label %if.end69.cleanup77_crit_edge

if.end69.cleanup77_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end76:                                         ; preds = %if.end69
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 10
  %33 = ptrtoint ptr %next_timer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %timer, ptr %next_timer, align 16
  %34 = ptrtoint ptr %expires_next66 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %13, ptr %expires_next66, align 8
  %35 = and i8 %bf.load70, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %35)
  %36 = icmp eq i8 %35, -128
  br i1 %36, label %if.end.i, label %if.end76.cleanup77_crit_edge

if.end76.cleanup77_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup77

if.end.i:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 @tick_program_event(i64 noundef %13, i32 noundef 1) #12
  br label %cleanup77

cleanup77:                                        ; preds = %if.end.i, %if.end76.cleanup77_crit_edge, %if.end69.cleanup77_crit_edge, %if.end65.cleanup77_crit_edge, %if.end61.cleanup77_crit_edge, %if.end55.cleanup77_crit_edge, %if.end52.cleanup77_crit_edge, %if.then48.cleanup77_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hrtimer_try_to_cancel(ptr noundef %timer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base2.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %state.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %entry
  %0 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %base2.i, align 4
  %seq3.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %seq3.i, align 4
  %and44.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool.not45.i = icmp eq i32 %and44.i, 0
  br i1 %tobool.not45.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  br label %do.end8.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

do.end8.i:                                        ; preds = %do.end8.i.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !154
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !155
  %4 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %seq3.i, align 4
  %and.i = and i32 %5, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end8.i.while.end.i_crit_edge, label %do.end8.i.do.end8.i_crit_edge

do.end8.i.do.end8.i_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

do.end8.i.while.end.i_crit_edge:                  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end8.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %3, %do.body.i.while.end.i_crit_edge ], [ %5, %do.end8.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %while.end.i.for.cond.i.preheader_crit_edge

while.end.i.for.cond.i.preheader_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %lor.lhs.false.i.for.cond.i.preheader_crit_edge, %while.end.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

lor.lhs.false.i:                                  ; preds = %while.end.i
  %running.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %running.i, align 8
  %cmp22.i = icmp eq ptr %9, %timer
  br i1 %cmp22.i, label %lor.lhs.false.i.for.cond.i.preheader_crit_edge, label %do.cond24.i

lor.lhs.false.i.for.cond.i.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

do.cond24.i:                                      ; preds = %lor.lhs.false.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  %10 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %seq3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %.lcssa.i)
  %cmp.i.i.not.i = icmp eq i32 %11, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %do.cond24.i.do.body.i.backedge_crit_edge

do.cond24.i.do.body.i.backedge_crit_edge:         ; preds = %do.cond24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.backedge

lor.rhs.i:                                        ; preds = %do.cond24.i
  %12 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %base2.i, align 4
  %cmp34.not.i = icmp eq ptr %1, %13
  br i1 %cmp34.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.do.body.i.backedge_crit_edge

lor.rhs.i.do.body.i.backedge_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.backedge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i.backedge:                               ; preds = %lor.rhs.i.do.body.i.backedge_crit_edge, %do.cond24.i.do.body.i.backedge_crit_edge
  br label %do.body.i

for.cond.i:                                       ; preds = %do.end33.i, %for.cond.i.preheader
  %14 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %base2.i, align 4
  %cmp.not.i12 = icmp eq ptr %15, getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13)
  br i1 %cmp.not.i12, label %for.cond.i.do.end33.i_crit_edge, label %do.body3.i, !prof !150

for.cond.i.do.end33.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

do.body3.i:                                       ; preds = %for.cond.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #12
  %18 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base2.i, align 4
  %cmp9.i = icmp eq ptr %15, %19
  br i1 %cmp9.i, label %lock_hrtimer_base.exit, label %do.body18.i, !prof !140

do.body18.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call.i) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.body18.i, %for.cond.i.do.end33.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !152
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !153
  br label %for.cond.i

lock_hrtimer_base.exit:                           ; preds = %do.body3.i
  %running.i13 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %15, i32 0, i32 4
  %22 = ptrtoint ptr %running.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %running.i13, align 8
  %cmp.i.not = icmp eq ptr %23, %timer
  br i1 %cmp.i.not, label %lock_hrtimer_base.exit.if.end5_crit_edge, label %if.then3

lock_hrtimer_base.exit.if.end5_crit_edge:         ; preds = %lock_hrtimer_base.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %lock_hrtimer_base.exit
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state.i, align 8
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i14 = icmp eq i8 %26, 0
  br i1 %tobool.not.i14, label %if.then3.if.end5_crit_edge, label %if.then.i

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then.i:                                        ; preds = %if.then3
  tail call void @debug_object_deactivate(ptr noundef %timer, ptr noundef nonnull @hrtimer_debug_descr) #12
  tail call fastcc void @trace_hrtimer_cancel(ptr noundef %timer) #12
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %15, align 8
  %29 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %34, ptrtoint (ptr @hrtimer_bases to i32)
  %35 = inttoptr i32 %add.i to ptr
  %cmp.i15 = icmp eq ptr %28, %35
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %state.i, align 8
  store volatile i8 0, ptr %state.i, align 8
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end5_crit_edge, label %if.end.i.i

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i.i:                                       ; preds = %if.then.i
  %active.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %15, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @timerqueue_del(ptr noundef %active.i.i, ptr noundef %timer) #12
  br i1 %call.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %index.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %15, i32 0, i32 1
  %39 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl nuw i32 1, %40
  %neg.i.i = xor i32 %shl.i.i, -1
  %active_bases.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %28, i32 0, i32 2
  %41 = ptrtoint ptr %active_bases.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active_bases.i.i, align 16
  %and11.i.i = and i32 %42, %neg.i.i
  store i32 %and11.i.i, ptr %active_bases.i.i, align 16
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end12.i.i_crit_edge
  br i1 %cmp.i15, label %land.lhs.true.i.i, label %if.end12.i.i.if.end5_crit_edge

if.end12.i.i.if.end5_crit_edge:                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true.i.i:                                ; preds = %if.end12.i.i
  %next_timer.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %28, i32 0, i32 10
  %43 = ptrtoint ptr %next_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %next_timer.i.i, align 16
  %cmp.i.i = icmp eq ptr %44, %timer
  br i1 %cmp.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.if.end5_crit_edge

land.lhs.true.i.i.if.end5_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %28) #12
  %expires_next1.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %28, i32 0, i32 9
  %45 = ptrtoint ptr %expires_next1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %expires_next1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i, i64 %46)
  %cmp.i.i.i = icmp eq i64 %call.i.i.i, %46
  br i1 %cmp.i.i.i, label %if.then15.i.i.if.end5_crit_edge, label %if.end.i.i.i

if.then15.i.i.if.end5_crit_edge:                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i.i.i:                                     ; preds = %if.then15.i.i
  %47 = ptrtoint ptr %expires_next1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %call.i.i.i, ptr %expires_next1.i.i.i, align 8
  %hres_active.i.i.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %28, i32 0, i32 4
  %48 = ptrtoint ptr %hres_active.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i.i.i.i = load i8, ptr %hres_active.i.i.i.i.i, align 8
  %49 = and i8 %bf.load.i.i.i.i.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %49)
  %50 = icmp eq i8 %49, -128
  br i1 %50, label %if.end.i.i.i.i, label %if.end.i.i.i.if.end5_crit_edge

if.end.i.i.i.if.end5_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i.i.i = tail call i32 @tick_program_event(i64 noundef %call.i.i.i, i32 noundef 1) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.i.i.i, %if.end.i.i.i.if.end5_crit_edge, %if.then15.i.i.if.end5_crit_edge, %land.lhs.true.i.i.if.end5_crit_edge, %if.end12.i.i.if.end5_crit_edge, %if.then.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %lock_hrtimer_base.exit.if.end5_crit_edge
  %ret.0 = phi i32 [ -1, %lock_hrtimer_base.exit.if.end5_crit_edge ], [ 0, %if.then3.if.end5_crit_edge ], [ 1, %if.then.i.if.end5_crit_edge ], [ 1, %if.end12.i.i.if.end5_crit_edge ], [ 1, %land.lhs.true.i.i.if.end5_crit_edge ], [ 1, %if.then15.i.i.if.end5_crit_edge ], [ 1, %if.end.i.i.i.if.end5_crit_edge ], [ 1, %if.end.i.i.i.i ]
  %51 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base2.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ 0, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hrtimer_active(ptr noundef %timer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base2 = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %state = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %base2, align 4
  %seq3 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %seq3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %seq3, align 4
  %and44 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool.not45 = icmp eq i32 %and44, 0
  br i1 %tobool.not45, label %do.body.while.end_crit_edge, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  br label %do.end8

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end8:                                          ; preds = %do.end8.do.end8_crit_edge, %do.body.do.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !154
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !155
  %4 = ptrtoint ptr %seq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %seq3, align 4
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8.while.end_crit_edge, label %do.end8.do.end8_crit_edge

do.end8.do.end8_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end8.while.end_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end8.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %3, %do.body.while.end_crit_edge ], [ %5, %do.end8.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %lor.lhs.false, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.end
  %running = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %running, align 8
  %cmp22 = icmp eq ptr %9, %timer
  br i1 %cmp22, label %lor.lhs.false.cleanup_crit_edge, label %do.cond24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond24:                                        ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  %10 = ptrtoint ptr %seq3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %seq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %.lcssa)
  %cmp.i.i.not = icmp eq i32 %11, %.lcssa
  br i1 %cmp.i.i.not, label %lor.rhs, label %do.cond24.do.body.backedge_crit_edge

do.cond24.do.body.backedge_crit_edge:             ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.cond24
  %12 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %base2, align 4
  %cmp34.not = icmp eq ptr %1, %13
  br i1 %cmp34.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %do.cond24.do.body.backedge_crit_edge
  br label %do.body

cleanup:                                          ; preds = %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %while.end.cleanup_crit_edge ], [ false, %lor.rhs.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hrtimer_cancel(ptr noundef %timer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %timer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %entry.if.then_crit_edge, label %entry.do.end.critedge_crit_edge

entry.do.end.critedge_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.critedge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %if.then.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !159
  %call = tail call i32 @hrtimer_try_to_cancel(ptr noundef %timer)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.if.then_crit_edge, label %if.then.do.end.critedge_crit_edge

if.then.do.end.critedge_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.critedge

if.then.if.then_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end.critedge:                                  ; preds = %if.then.do.end.critedge_crit_edge, %entry.do.end.critedge_crit_edge
  %call.lcssa = phi i32 [ %call5, %entry.do.end.critedge_crit_edge ], [ %call, %if.then.do.end.critedge_crit_edge ]
  ret i32 %call.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__hrtimer_get_remaining(ptr noundef %timer, i1 zeroext %adjust) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base1.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %do.end33.i, %entry
  %0 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %base1.i, align 4
  %cmp.not.i = icmp eq ptr %1, getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13)
  br i1 %cmp.not.i, label %for.cond.i.do.end33.i_crit_edge, label %do.body3.i, !prof !150

for.cond.i.do.end33.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

do.body3.i:                                       ; preds = %for.cond.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %4 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i, align 4
  %cmp9.i = icmp eq ptr %1, %5
  br i1 %cmp9.i, label %lock_hrtimer_base.exit, label %do.body18.i, !prof !140

do.body18.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call.i) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.body18.i, %for.cond.i.do.end33.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !152
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !153
  br label %for.cond.i

lock_hrtimer_base.exit:                           ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %8 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %expires.i, align 8
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_time.i, align 4
  %call.i4 = tail call i64 %11() #12
  %sub.i = sub i64 %9, %call.i4
  %12 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call.i) #12
  ret i64 %sub.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hrtimer_get_next_event() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %hres_active.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %hres_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %if.then, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call fastcc i64 @__hrtimer_get_next_event(ptr noundef %6, i32 noundef 255)
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry.do.body9_crit_edge
  %expires.0 = phi i64 [ 9223372036854775807, %entry.do.body9_crit_edge ], [ %call8, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call4) #12
  ret i64 %expires.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @__hrtimer_get_next_event(ptr noundef %cpu_base, i32 noundef %active_mask) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 4
  %0 = ptrtoint ptr %softirq_activated to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %softirq_activated, align 8
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %and = and i32 %active_mask, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 2
  %2 = ptrtoint ptr %active_bases to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_bases, align 16
  %and2 = and i32 %3, 240
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 12
  %4 = ptrtoint ptr %softirq_next_timer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %softirq_next_timer, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not.i43.i = icmp eq i32 %and2, 0
  br i1 %tobool.not.i43.i, label %if.then.__hrtimer_next_event_base.exit_crit_edge, label %__next_base.exit.lr.ph.i

if.then.__hrtimer_next_event_base.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit

__next_base.exit.lr.ph.i:                         ; preds = %if.then
  %next_timer.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 10
  br label %__next_base.exit.i

__next_base.exit.i:                               ; preds = %cleanup.i.__next_base.exit.i_crit_edge, %__next_base.exit.lr.ph.i
  %expires_next.addr.045.i = phi i64 [ 9223372036854775807, %__next_base.exit.lr.ph.i ], [ %expires_next.addr.2.i, %cleanup.i.__next_base.exit.i_crit_edge ]
  %active.addr.044.i = phi i32 [ %and2, %__next_base.exit.lr.ph.i ], [ %and.i.i, %cleanup.i.__next_base.exit.i_crit_edge ]
  %5 = tail call i32 @llvm.cttz.i32(i32 %active.addr.044.i, i1 true) #12, !range !143
  %shl.i.i = shl nuw i32 1, %5
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %active.addr.044.i, %neg.i.i
  %arrayidx.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge, label %while.body.i

__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge: ; preds = %__next_base.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit

while.body.i:                                     ; preds = %__next_base.exit.i
  %rb_leftmost.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end9.i_crit_edge

while.body.i.if.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i:                                        ; preds = %while.body.i
  %call3.i = tail call ptr @timerqueue_iterate_next(ptr noundef null) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then.i.cleanup.i_crit_edge, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %while.body.i.if.end9.i_crit_edge
  %timer.0.i = phi ptr [ %7, %while.body.i.if.end9.i_crit_edge ], [ %call3.i, %if.then.i.if.end9.i_crit_edge ]
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %expires.i.i, align 8
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5, i32 7
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset.i, align 8
  %sub.i = sub i64 %9, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %expires_next.addr.045.i)
  %cmp11.i.not = icmp slt i64 %sub.i, %expires_next.addr.045.i
  %12 = tail call i64 @llvm.smin.i64(i64 %sub.i, i64 %expires_next.addr.045.i) #12
  br i1 %cmp11.i.not, label %if.end15.i, label %if.end9.i.cleanup.i_crit_edge

if.end9.i.cleanup.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.end9.i
  %is_soft.i = getelementptr inbounds %struct.hrtimer, ptr %timer.0.i, i32 0, i32 6
  %13 = ptrtoint ptr %is_soft.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_soft.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not.i = icmp eq i8 %14, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %softirq_next_timer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %timer.0.i, ptr %softirq_next_timer, align 32
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %next_timer.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %timer.0.i, ptr %next_timer.i, align 16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then17.i, %if.end9.i.cleanup.i_crit_edge, %if.then.i.cleanup.i_crit_edge
  %expires_next.addr.2.i = phi i64 [ %expires_next.addr.045.i, %if.then.i.cleanup.i_crit_edge ], [ %sub.i, %if.then17.i ], [ %sub.i, %if.else.i ], [ %12, %if.end9.i.cleanup.i_crit_edge ]
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.i.__hrtimer_next_event_base.exit_crit_edge, label %cleanup.i.__next_base.exit.i_crit_edge

cleanup.i.__next_base.exit.i_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i

cleanup.i.__hrtimer_next_event_base.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit

__hrtimer_next_event_base.exit:                   ; preds = %cleanup.i.__hrtimer_next_event_base.exit_crit_edge, %__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge, %if.then.__hrtimer_next_event_base.exit_crit_edge
  %expires_next.addr.0.lcssa.i = phi i64 [ 9223372036854775807, %if.then.__hrtimer_next_event_base.exit_crit_edge ], [ %expires_next.addr.045.i, %__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge ], [ %expires_next.addr.2.i, %cleanup.i.__hrtimer_next_event_base.exit_crit_edge ]
  %17 = tail call i64 @llvm.smax.i64(i64 %expires_next.addr.0.lcssa.i, i64 0) #12
  %18 = ptrtoint ptr %softirq_next_timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %softirq_next_timer, align 32
  br label %if.end

if.end:                                           ; preds = %__hrtimer_next_event_base.exit, %entry.if.end_crit_edge
  %next_timer.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %19, %__hrtimer_next_event_base.exit ]
  %expires_next.0 = phi i64 [ 9223372036854775807, %entry.if.end_crit_edge ], [ %17, %__hrtimer_next_event_base.exit ]
  %and4 = and i32 %active_mask, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %active_bases7 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 2
  %20 = ptrtoint ptr %active_bases7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active_bases7, align 16
  %and8 = and i32 %21, 15
  %next_timer9 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 10
  %22 = ptrtoint ptr %next_timer9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %next_timer.0, ptr %next_timer9, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not.i43.i22 = icmp eq i32 %and8, 0
  br i1 %tobool.not.i43.i22, label %if.then6.__hrtimer_next_event_base.exit55_crit_edge, label %__next_base.exit.lr.ph.i25

if.then6.__hrtimer_next_event_base.exit55_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit55

__next_base.exit.lr.ph.i25:                       ; preds = %if.then6
  %softirq_next_timer.i23 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 12
  br label %__next_base.exit.i33

__next_base.exit.i33:                             ; preds = %cleanup.i53.__next_base.exit.i33_crit_edge, %__next_base.exit.lr.ph.i25
  %expires_next.addr.045.i26 = phi i64 [ %expires_next.0, %__next_base.exit.lr.ph.i25 ], [ %expires_next.addr.2.i51, %cleanup.i53.__next_base.exit.i33_crit_edge ]
  %active.addr.044.i27 = phi i32 [ %and8, %__next_base.exit.lr.ph.i25 ], [ %and.i.i30, %cleanup.i53.__next_base.exit.i33_crit_edge ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %active.addr.044.i27, i1 true) #12, !range !143
  %shl.i.i28 = shl nuw i32 1, %23
  %neg.i.i29 = xor i32 %shl.i.i28, -1
  %and.i.i30 = and i32 %active.addr.044.i27, %neg.i.i29
  %arrayidx.i.i31 = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %23
  %tobool.not.i32 = icmp eq ptr %arrayidx.i.i31, null
  br i1 %tobool.not.i32, label %__next_base.exit.i33.__hrtimer_next_event_base.exit55_crit_edge, label %while.body.i36

__next_base.exit.i33.__hrtimer_next_event_base.exit55_crit_edge: ; preds = %__next_base.exit.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit55

while.body.i36:                                   ; preds = %__next_base.exit.i33
  %rb_leftmost.i.i34 = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %23, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %rb_leftmost.i.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rb_leftmost.i.i34, align 4
  %cmp.i35 = icmp eq ptr %25, null
  br i1 %cmp.i35, label %if.then.i39, label %while.body.i36.if.end9.i45_crit_edge

while.body.i36.if.end9.i45_crit_edge:             ; preds = %while.body.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i45

if.then.i39:                                      ; preds = %while.body.i36
  %call3.i37 = tail call ptr @timerqueue_iterate_next(ptr noundef null) #12
  %tobool4.not.i38 = icmp eq ptr %call3.i37, null
  br i1 %tobool4.not.i38, label %if.then.i39.cleanup.i53_crit_edge, label %if.then.i39.if.end9.i45_crit_edge

if.then.i39.if.end9.i45_crit_edge:                ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i45

if.then.i39.cleanup.i53_crit_edge:                ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i53

if.end9.i45:                                      ; preds = %if.then.i39.if.end9.i45_crit_edge, %while.body.i36.if.end9.i45_crit_edge
  %timer.0.i40 = phi ptr [ %25, %while.body.i36.if.end9.i45_crit_edge ], [ %call3.i37, %if.then.i39.if.end9.i45_crit_edge ]
  %expires.i.i41 = getelementptr inbounds %struct.timerqueue_node, ptr %timer.0.i40, i32 0, i32 1
  %26 = ptrtoint ptr %expires.i.i41 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %expires.i.i41, align 8
  %offset.i42 = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %23, i32 7
  %28 = ptrtoint ptr %offset.i42 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset.i42, align 8
  %sub.i43 = sub i64 %27, %29
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i43, i64 %expires_next.addr.045.i26)
  %cmp11.i44.not = icmp slt i64 %sub.i43, %expires_next.addr.045.i26
  %30 = tail call i64 @llvm.smin.i64(i64 %sub.i43, i64 %expires_next.addr.045.i26) #12
  br i1 %cmp11.i44.not, label %if.end15.i48, label %if.end9.i45.cleanup.i53_crit_edge

if.end9.i45.cleanup.i53_crit_edge:                ; preds = %if.end9.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i53

if.end15.i48:                                     ; preds = %if.end9.i45
  %is_soft.i46 = getelementptr inbounds %struct.hrtimer, ptr %timer.0.i40, i32 0, i32 6
  %31 = ptrtoint ptr %is_soft.i46 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_soft.i46, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not.i47 = icmp eq i8 %32, 0
  br i1 %tobool16.not.i47, label %if.else.i50, label %if.then17.i49

if.then17.i49:                                    ; preds = %if.end15.i48
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %softirq_next_timer.i23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %timer.0.i40, ptr %softirq_next_timer.i23, align 32
  br label %cleanup.i53

if.else.i50:                                      ; preds = %if.end15.i48
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %next_timer9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %timer.0.i40, ptr %next_timer9, align 16
  br label %cleanup.i53

cleanup.i53:                                      ; preds = %if.else.i50, %if.then17.i49, %if.end9.i45.cleanup.i53_crit_edge, %if.then.i39.cleanup.i53_crit_edge
  %expires_next.addr.2.i51 = phi i64 [ %expires_next.addr.045.i26, %if.then.i39.cleanup.i53_crit_edge ], [ %sub.i43, %if.then17.i49 ], [ %sub.i43, %if.else.i50 ], [ %30, %if.end9.i45.cleanup.i53_crit_edge ]
  %tobool.not.i.i52 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i52, label %cleanup.i53.__hrtimer_next_event_base.exit55_crit_edge, label %cleanup.i53.__next_base.exit.i33_crit_edge

cleanup.i53.__next_base.exit.i33_crit_edge:       ; preds = %cleanup.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i33

cleanup.i53.__hrtimer_next_event_base.exit55_crit_edge: ; preds = %cleanup.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit55

__hrtimer_next_event_base.exit55:                 ; preds = %cleanup.i53.__hrtimer_next_event_base.exit55_crit_edge, %__next_base.exit.i33.__hrtimer_next_event_base.exit55_crit_edge, %if.then6.__hrtimer_next_event_base.exit55_crit_edge
  %expires_next.addr.0.lcssa.i54 = phi i64 [ %expires_next.0, %if.then6.__hrtimer_next_event_base.exit55_crit_edge ], [ %expires_next.addr.045.i26, %__next_base.exit.i33.__hrtimer_next_event_base.exit55_crit_edge ], [ %expires_next.addr.2.i51, %cleanup.i53.__hrtimer_next_event_base.exit55_crit_edge ]
  %35 = tail call i64 @llvm.smax.i64(i64 %expires_next.addr.0.lcssa.i54, i64 0) #12
  br label %if.end11

if.end11:                                         ; preds = %__hrtimer_next_event_base.exit55, %if.end.if.end11_crit_edge
  %expires_next.1 = phi i64 [ %35, %__hrtimer_next_event_base.exit55 ], [ %expires_next.0, %if.end.if.end11_crit_edge ]
  ret i64 %expires_next.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hrtimer_next_event_without(ptr noundef %exclude) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %hres_active.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %hres_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %entry.do.body15_crit_edge, label %if.then

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

if.then:                                          ; preds = %entry
  %8 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.then9, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then9:                                         ; preds = %if.then
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %active_bases to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_bases, align 16
  %and = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i43.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i43.i, label %if.then9.__hrtimer_next_event_base.exit_crit_edge, label %__next_base.exit.lr.ph.i

if.then9.__hrtimer_next_event_base.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit

__next_base.exit.lr.ph.i:                         ; preds = %if.then9
  %tobool13.not.i = icmp ne ptr %exclude, null
  %softirq_next_timer.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 12
  %next_timer.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 10
  br label %__next_base.exit.i

__next_base.exit.i:                               ; preds = %cleanup.i.__next_base.exit.i_crit_edge, %__next_base.exit.lr.ph.i
  %expires_next.addr.045.i = phi i64 [ 9223372036854775807, %__next_base.exit.lr.ph.i ], [ %expires_next.addr.2.i, %cleanup.i.__next_base.exit.i_crit_edge ]
  %active.addr.044.i = phi i32 [ %and, %__next_base.exit.lr.ph.i ], [ %and.i.i, %cleanup.i.__next_base.exit.i_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %active.addr.044.i, i1 true) #12, !range !143
  %shl.i.i = shl nuw i32 1, %11
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %active.addr.044.i, %neg.i.i
  %arrayidx.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %11
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge, label %while.body.i

__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge: ; preds = %__next_base.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit

while.body.i:                                     ; preds = %__next_base.exit.i
  %rb_leftmost.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %11, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i = icmp eq ptr %13, %exclude
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end9.i_crit_edge

while.body.i.if.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i:                                        ; preds = %while.body.i
  %call3.i = tail call ptr @timerqueue_iterate_next(ptr noundef %exclude) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then.i.cleanup.i_crit_edge, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %while.body.i.if.end9.i_crit_edge
  %timer.0.i = phi ptr [ %13, %while.body.i.if.end9.i_crit_edge ], [ %call3.i, %if.then.i.if.end9.i_crit_edge ]
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %expires.i.i, align 8
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %11, i32 7
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset.i, align 8
  %sub.i = sub i64 %15, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %expires_next.addr.045.i)
  %cmp11.i = icmp sge i64 %sub.i, %expires_next.addr.045.i
  %brmerge.i = or i1 %tobool13.not.i, %cmp11.i
  %18 = tail call i64 @llvm.smin.i64(i64 %sub.i, i64 %expires_next.addr.045.i) #12
  br i1 %brmerge.i, label %if.end9.i.cleanup.i_crit_edge, label %if.end15.i

if.end9.i.cleanup.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.end9.i
  %is_soft.i = getelementptr inbounds %struct.hrtimer, ptr %timer.0.i, i32 0, i32 6
  %19 = ptrtoint ptr %is_soft.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_soft.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not.i = icmp eq i8 %20, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %softirq_next_timer.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %timer.0.i, ptr %softirq_next_timer.i, align 32
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %next_timer.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %timer.0.i, ptr %next_timer.i, align 16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then17.i, %if.end9.i.cleanup.i_crit_edge, %if.then.i.cleanup.i_crit_edge
  %expires_next.addr.2.i = phi i64 [ %expires_next.addr.045.i, %if.then.i.cleanup.i_crit_edge ], [ %sub.i, %if.then17.i ], [ %sub.i, %if.else.i ], [ %18, %if.end9.i.cleanup.i_crit_edge ]
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.i.__hrtimer_next_event_base.exit_crit_edge, label %cleanup.i.__next_base.exit.i_crit_edge

cleanup.i.__next_base.exit.i_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i

cleanup.i.__hrtimer_next_event_base.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit

__hrtimer_next_event_base.exit:                   ; preds = %cleanup.i.__hrtimer_next_event_base.exit_crit_edge, %__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge, %if.then9.__hrtimer_next_event_base.exit_crit_edge
  %expires_next.addr.0.lcssa.i = phi i64 [ 9223372036854775807, %if.then9.__hrtimer_next_event_base.exit_crit_edge ], [ %expires_next.addr.045.i, %__next_base.exit.i.__hrtimer_next_event_base.exit_crit_edge ], [ %expires_next.addr.2.i, %cleanup.i.__hrtimer_next_event_base.exit_crit_edge ]
  %23 = tail call i64 @llvm.smax.i64(i64 %expires_next.addr.0.lcssa.i, i64 0) #12
  br label %if.end

if.end:                                           ; preds = %__hrtimer_next_event_base.exit, %if.then.if.end_crit_edge
  %expires.0 = phi i64 [ 9223372036854775807, %if.then.if.end_crit_edge ], [ %23, %__hrtimer_next_event_base.exit ]
  %active_bases11 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 2
  %24 = ptrtoint ptr %active_bases11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %active_bases11, align 16
  %and12 = and i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not.i43.i34 = icmp eq i32 %and12, 0
  br i1 %tobool.not.i43.i34, label %if.end.__hrtimer_next_event_base.exit69_crit_edge, label %__next_base.exit.lr.ph.i38

if.end.__hrtimer_next_event_base.exit69_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit69

__next_base.exit.lr.ph.i38:                       ; preds = %if.end
  %tobool13.not.i35 = icmp ne ptr %exclude, null
  %softirq_next_timer.i36 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 12
  %next_timer.i37 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 10
  br label %__next_base.exit.i46

__next_base.exit.i46:                             ; preds = %cleanup.i67.__next_base.exit.i46_crit_edge, %__next_base.exit.lr.ph.i38
  %expires_next.addr.045.i39 = phi i64 [ %expires.0, %__next_base.exit.lr.ph.i38 ], [ %expires_next.addr.2.i65, %cleanup.i67.__next_base.exit.i46_crit_edge ]
  %active.addr.044.i40 = phi i32 [ %and12, %__next_base.exit.lr.ph.i38 ], [ %and.i.i43, %cleanup.i67.__next_base.exit.i46_crit_edge ]
  %26 = tail call i32 @llvm.cttz.i32(i32 %active.addr.044.i40, i1 true) #12, !range !143
  %shl.i.i41 = shl nuw i32 1, %26
  %neg.i.i42 = xor i32 %shl.i.i41, -1
  %and.i.i43 = and i32 %active.addr.044.i40, %neg.i.i42
  %arrayidx.i.i44 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %26
  %tobool.not.i45 = icmp eq ptr %arrayidx.i.i44, null
  br i1 %tobool.not.i45, label %__next_base.exit.i46.__hrtimer_next_event_base.exit69_crit_edge, label %while.body.i49

__next_base.exit.i46.__hrtimer_next_event_base.exit69_crit_edge: ; preds = %__next_base.exit.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit69

while.body.i49:                                   ; preds = %__next_base.exit.i46
  %rb_leftmost.i.i47 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %26, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %rb_leftmost.i.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rb_leftmost.i.i47, align 4
  %cmp.i48 = icmp eq ptr %28, %exclude
  br i1 %cmp.i48, label %if.then.i52, label %while.body.i49.if.end9.i59_crit_edge

while.body.i49.if.end9.i59_crit_edge:             ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i59

if.then.i52:                                      ; preds = %while.body.i49
  %call3.i50 = tail call ptr @timerqueue_iterate_next(ptr noundef %exclude) #12
  %tobool4.not.i51 = icmp eq ptr %call3.i50, null
  br i1 %tobool4.not.i51, label %if.then.i52.cleanup.i67_crit_edge, label %if.then.i52.if.end9.i59_crit_edge

if.then.i52.if.end9.i59_crit_edge:                ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i59

if.then.i52.cleanup.i67_crit_edge:                ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i67

if.end9.i59:                                      ; preds = %if.then.i52.if.end9.i59_crit_edge, %while.body.i49.if.end9.i59_crit_edge
  %timer.0.i53 = phi ptr [ %28, %while.body.i49.if.end9.i59_crit_edge ], [ %call3.i50, %if.then.i52.if.end9.i59_crit_edge ]
  %expires.i.i54 = getelementptr inbounds %struct.timerqueue_node, ptr %timer.0.i53, i32 0, i32 1
  %29 = ptrtoint ptr %expires.i.i54 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %expires.i.i54, align 8
  %offset.i55 = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 %26, i32 7
  %31 = ptrtoint ptr %offset.i55 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %offset.i55, align 8
  %sub.i56 = sub i64 %30, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i56, i64 %expires_next.addr.045.i39)
  %cmp11.i57 = icmp sge i64 %sub.i56, %expires_next.addr.045.i39
  %brmerge.i58 = or i1 %tobool13.not.i35, %cmp11.i57
  %33 = tail call i64 @llvm.smin.i64(i64 %sub.i56, i64 %expires_next.addr.045.i39) #12
  br i1 %brmerge.i58, label %if.end9.i59.cleanup.i67_crit_edge, label %if.end15.i62

if.end9.i59.cleanup.i67_crit_edge:                ; preds = %if.end9.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i67

if.end15.i62:                                     ; preds = %if.end9.i59
  %is_soft.i60 = getelementptr inbounds %struct.hrtimer, ptr %timer.0.i53, i32 0, i32 6
  %34 = ptrtoint ptr %is_soft.i60 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_soft.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not.i61 = icmp eq i8 %35, 0
  br i1 %tobool16.not.i61, label %if.else.i64, label %if.then17.i63

if.then17.i63:                                    ; preds = %if.end15.i62
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %softirq_next_timer.i36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %timer.0.i53, ptr %softirq_next_timer.i36, align 32
  br label %cleanup.i67

if.else.i64:                                      ; preds = %if.end15.i62
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %next_timer.i37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %timer.0.i53, ptr %next_timer.i37, align 16
  br label %cleanup.i67

cleanup.i67:                                      ; preds = %if.else.i64, %if.then17.i63, %if.end9.i59.cleanup.i67_crit_edge, %if.then.i52.cleanup.i67_crit_edge
  %expires_next.addr.2.i65 = phi i64 [ %expires_next.addr.045.i39, %if.then.i52.cleanup.i67_crit_edge ], [ %sub.i56, %if.then17.i63 ], [ %sub.i56, %if.else.i64 ], [ %33, %if.end9.i59.cleanup.i67_crit_edge ]
  %tobool.not.i.i66 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i66, label %cleanup.i67.__hrtimer_next_event_base.exit69_crit_edge, label %cleanup.i67.__next_base.exit.i46_crit_edge

cleanup.i67.__next_base.exit.i46_crit_edge:       ; preds = %cleanup.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i46

cleanup.i67.__hrtimer_next_event_base.exit69_crit_edge: ; preds = %cleanup.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_next_event_base.exit69

__hrtimer_next_event_base.exit69:                 ; preds = %cleanup.i67.__hrtimer_next_event_base.exit69_crit_edge, %__next_base.exit.i46.__hrtimer_next_event_base.exit69_crit_edge, %if.end.__hrtimer_next_event_base.exit69_crit_edge
  %expires_next.addr.0.lcssa.i68 = phi i64 [ %expires.0, %if.end.__hrtimer_next_event_base.exit69_crit_edge ], [ %expires_next.addr.045.i39, %__next_base.exit.i46.__hrtimer_next_event_base.exit69_crit_edge ], [ %expires_next.addr.2.i65, %cleanup.i67.__hrtimer_next_event_base.exit69_crit_edge ]
  %38 = tail call i64 @llvm.smax.i64(i64 %expires_next.addr.0.lcssa.i68, i64 0) #12
  br label %do.body15

do.body15:                                        ; preds = %__hrtimer_next_event_base.exit69, %entry.do.body15_crit_edge
  %expires.1 = phi i64 [ %38, %__hrtimer_next_event_base.exit69 ], [ 9223372036854775807, %entry.do.body15_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call4) #12
  ret i64 %expires.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_init(ptr noundef %timer, i32 noundef %clock_id, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_init(ptr noundef %timer, ptr noundef nonnull @hrtimer_debug_descr) #12
  tail call fastcc void @trace_hrtimer_init(ptr noundef %timer, i32 noundef %clock_id, i32 noundef %mode) #12
  %0 = call ptr @memset(ptr %timer, i32 0, i32 48)
  %1 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock_id)
  %cmp.i = icmp eq i32 %clock_id, 0
  %and3.i = and i32 %mode, 1
  %clock_id.addr.0.i = select i1 %cmp.i, i32 %and3.i, i32 %clock_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %clock_id.addr.0.i)
  %cmp.i.i = icmp slt i32 %clock_id.addr.0.i, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.do.end.i.i_crit_edge, !prof !140

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %entry
  %arrayidx.i.i = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %clock_id.addr.0.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %9 = and i32 %clock_id.addr.0.i, 1073741823
  %10 = lshr i32 63356, %9
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not.not.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp2.not.not.not.i.i, label %if.then.i.i.__hrtimer_init.exit_crit_edge, label %if.then.i.i.do.end.i.i_crit_edge

if.then.i.i.do.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i.__hrtimer_init.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_init.exit

do.end.i.i:                                       ; preds = %if.then.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %clock_id.addr.0.i) #12
  br label %__hrtimer_init.exit

__hrtimer_init.exit:                              ; preds = %do.end.i.i, %if.then.i.i.__hrtimer_init.exit_crit_edge
  %retval.1.i.i = phi i32 [ %8, %if.then.i.i.__hrtimer_init.exit_crit_edge ], [ 0, %do.end.i.i ]
  %and.i = and i32 %mode, 4
  %and.lobit.i = lshr exact i32 %and.i, 2
  %12 = trunc i32 %and.lobit.i to i8
  %add.i = add i32 %6, ptrtoint (ptr @hrtimer_bases to i32)
  %13 = inttoptr i32 %add.i to ptr
  %add7.i = add i32 %retval.1.i.i, %and.i
  %is_soft.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 6
  %14 = ptrtoint ptr %is_soft.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %is_soft.i, align 2
  %15 = trunc i32 %mode to i8
  %16 = lshr i8 %15, 3
  %17 = and i8 %16, 1
  %is_hard.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 7
  %18 = ptrtoint ptr %is_hard.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %is_hard.i, align 1
  %arrayidx14.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %add7.i
  %base15.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %19 = ptrtoint ptr %base15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx14.i, ptr %base15.i, align 4
  %20 = ptrtoint ptr %timer to i32
  %21 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %timer, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_interrupt(ptr nocapture noundef writeonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %hres_active = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %hres_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body6, label %do.end13, !prof !150

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1788, 0\0A.popsection", ""() #12, !srcloc !160
  unreachable

do.end13:                                         ; preds = %entry
  %nr_events = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 5
  %8 = ptrtoint ptr %nr_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_events, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %nr_events, align 4
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 9223372036854775807, ptr %next_event, align 16
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 1, i32 7
  %offset3.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 2, i32 7
  %offset6.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 3, i32 7
  %clock_was_set_seq.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 3
  %call.i = tail call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i, ptr noundef %offset3.i, ptr noundef %offset6.i) #12
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset.i, align 8
  %offset9.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 5, i32 7
  %13 = ptrtoint ptr %offset9.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %offset9.i, align 8
  %14 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset3.i, align 8
  %offset12.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 6, i32 7
  %16 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %offset12.i, align 8
  %17 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset6.i, align 8
  %offset15.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 7, i32 7
  %19 = ptrtoint ptr %offset15.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %offset15.i, align 8
  %expires_next21 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 9
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 11
  %nr_retries = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 6
  %20 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load20 = load i8, ptr %hres_active, align 8
  %bf.set = or i8 %bf.load20, 64
  store i8 %bf.set, ptr %hres_active, align 8
  %21 = ptrtoint ptr %expires_next21 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 9223372036854775807, ptr %expires_next21, align 8
  %22 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %softirq_expires_next, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %23)
  %cmp.i.i = icmp slt i64 %call.i, %23
  br i1 %cmp.i.i, label %do.end13.if.end28_crit_edge, label %if.then23

do.end13.if.end28_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then23:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 9223372036854775807, ptr %softirq_expires_next, align 8
  %bf.set27 = or i8 %bf.load20, 80
  %25 = ptrtoint ptr %hres_active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.set27, ptr %hres_active, align 8
  tail call void @raise_softirq_irqoff(i32 noundef 8) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.end13.if.end28_crit_edge
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %call.i, i32 noundef %call16, i32 noundef 15)
  %call29 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  %26 = ptrtoint ptr %expires_next21 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call29, ptr %expires_next21, align 8
  %27 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load32 = load i8, ptr %hres_active, align 8
  %bf.clear33 = and i8 %bf.load32, -65
  store i8 %bf.clear33, ptr %hres_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call16) #12
  %call44 = tail call i32 @tick_program_event(i64 noundef %call29, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end28.if.then46_crit_edge, label %do.body51

if.end28.if.then46_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.then46:                                        ; preds = %if.end28.2.if.then46_crit_edge, %if.end28.1.if.then46_crit_edge, %if.end28.if.then46_crit_edge
  %28 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load47 = load i8, ptr %hres_active, align 8
  %bf.clear48 = and i8 %bf.load47, -33
  store i8 %bf.clear48, ptr %hres_active, align 8
  br label %cleanup

do.body51:                                        ; preds = %if.end28
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %call.i168 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i, ptr noundef %offset3.i, ptr noundef %offset6.i) #12
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %offset.i, align 8
  %31 = ptrtoint ptr %offset9.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %offset9.i, align 8
  %32 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offset3.i, align 8
  %34 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %offset12.i, align 8
  %35 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %offset6.i, align 8
  %37 = ptrtoint ptr %offset15.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %offset15.i, align 8
  %38 = ptrtoint ptr %nr_retries to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nr_retries, align 64
  %inc62 = add i16 %39, 1
  store i16 %inc62, ptr %nr_retries, align 64
  %40 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load20.1 = load i8, ptr %hres_active, align 8
  %bf.set.1 = or i8 %bf.load20.1, 64
  store i8 %bf.set.1, ptr %hres_active, align 8
  %41 = ptrtoint ptr %expires_next21 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 9223372036854775807, ptr %expires_next21, align 8
  %42 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %softirq_expires_next, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i168, i64 %43)
  %cmp.i.i.1 = icmp slt i64 %call.i168, %43
  br i1 %cmp.i.i.1, label %do.body51.if.end28.1_crit_edge, label %if.then23.1

do.body51.if.end28.1_crit_edge:                   ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.1

if.then23.1:                                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 9223372036854775807, ptr %softirq_expires_next, align 8
  %bf.set27.1 = or i8 %bf.load20.1, 80
  %45 = ptrtoint ptr %hres_active to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %bf.set27.1, ptr %hres_active, align 8
  tail call void @raise_softirq_irqoff(i32 noundef 8) #12
  br label %if.end28.1

if.end28.1:                                       ; preds = %if.then23.1, %do.body51.if.end28.1_crit_edge
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %call.i168, i32 noundef %call58, i32 noundef 15)
  %call29.1 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  %46 = ptrtoint ptr %expires_next21 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %call29.1, ptr %expires_next21, align 8
  %47 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load32.1 = load i8, ptr %hres_active, align 8
  %bf.clear33.1 = and i8 %bf.load32.1, -65
  store i8 %bf.clear33.1, ptr %hres_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call58) #12
  %call44.1 = tail call i32 @tick_program_event(i64 noundef %call29.1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.1)
  %tobool45.not.1 = icmp eq i32 %call44.1, 0
  br i1 %tobool45.not.1, label %if.end28.1.if.then46_crit_edge, label %do.body51.1

if.end28.1.if.then46_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

do.body51.1:                                      ; preds = %if.end28.1
  %call58.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %call.i168.1 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i, ptr noundef %offset3.i, ptr noundef %offset6.i) #12
  %48 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %offset.i, align 8
  %50 = ptrtoint ptr %offset9.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %offset9.i, align 8
  %51 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %offset3.i, align 8
  %53 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %offset12.i, align 8
  %54 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %offset6.i, align 8
  %56 = ptrtoint ptr %offset15.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %offset15.i, align 8
  %57 = ptrtoint ptr %nr_retries to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %nr_retries, align 64
  %inc62.1 = add i16 %58, 1
  store i16 %inc62.1, ptr %nr_retries, align 64
  %59 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load20.2 = load i8, ptr %hres_active, align 8
  %bf.set.2 = or i8 %bf.load20.2, 64
  store i8 %bf.set.2, ptr %hres_active, align 8
  %60 = ptrtoint ptr %expires_next21 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 9223372036854775807, ptr %expires_next21, align 8
  %61 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %softirq_expires_next, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i168.1, i64 %62)
  %cmp.i.i.2 = icmp slt i64 %call.i168.1, %62
  br i1 %cmp.i.i.2, label %do.body51.1.if.end28.2_crit_edge, label %if.then23.2

do.body51.1.if.end28.2_crit_edge:                 ; preds = %do.body51.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.2

if.then23.2:                                      ; preds = %do.body51.1
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 9223372036854775807, ptr %softirq_expires_next, align 8
  %bf.set27.2 = or i8 %bf.load20.2, 80
  %64 = ptrtoint ptr %hres_active to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.set27.2, ptr %hres_active, align 8
  tail call void @raise_softirq_irqoff(i32 noundef 8) #12
  br label %if.end28.2

if.end28.2:                                       ; preds = %if.then23.2, %do.body51.1.if.end28.2_crit_edge
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %call.i168.1, i32 noundef %call58.1, i32 noundef 15)
  %call29.2 = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %6)
  %65 = ptrtoint ptr %expires_next21 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %call29.2, ptr %expires_next21, align 8
  %66 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load32.2 = load i8, ptr %hres_active, align 8
  %bf.clear33.2 = and i8 %bf.load32.2, -65
  store i8 %bf.clear33.2, ptr %hres_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call58.1) #12
  %call44.2 = tail call i32 @tick_program_event(i64 noundef %call29.2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.2)
  %tobool45.not.2 = icmp eq i32 %call44.2, 0
  br i1 %tobool45.not.2, label %if.end28.2.if.then46_crit_edge, label %do.body51.2

if.end28.2.if.then46_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

do.body51.2:                                      ; preds = %if.end28.2
  %call58.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %call.i168.2 = tail call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i, ptr noundef %offset3.i, ptr noundef %offset6.i) #12
  %67 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %offset.i, align 8
  %69 = ptrtoint ptr %offset9.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %offset9.i, align 8
  %70 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %offset3.i, align 8
  %72 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %offset12.i, align 8
  %73 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %offset6.i, align 8
  %75 = ptrtoint ptr %offset15.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %offset15.i, align 8
  %76 = ptrtoint ptr %nr_retries to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nr_retries, align 64
  %inc62.2 = add i16 %77, 1
  store i16 %inc62.2, ptr %nr_retries, align 64
  %nr_hangs = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 7
  %78 = ptrtoint ptr %nr_hangs to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nr_hangs, align 2
  %inc68 = add i16 %79, 1
  store i16 %inc68, ptr %nr_hangs, align 2
  %80 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load70 = load i8, ptr %hres_active, align 8
  %bf.set72 = or i8 %bf.load70, 32
  store i8 %bf.set72, ptr %hres_active, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call58.2) #12
  %sub = sub i64 %call.i168.2, %call.i
  %conv82 = trunc i64 %sub to i32
  %max_hang_time = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 8
  %81 = ptrtoint ptr %max_hang_time to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_hang_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv82)
  %cmp83 = icmp ult i32 %82, %conv82
  br i1 %cmp83, label %if.then85, label %do.body51.2.if.end88_crit_edge

do.body51.2.if.end88_crit_edge:                   ; preds = %do.body51.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then85:                                        ; preds = %do.body51.2
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %max_hang_time to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv82, ptr %max_hang_time, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %do.body51.2.if.end88_crit_edge
  %84 = tail call i64 @llvm.smin.i64(i64 %sub, i64 100000000)
  %expires_next.0 = add i64 %84, %call.i168.2
  %call95 = tail call i32 @tick_program_event(i64 noundef %expires_next.0, i32 noundef 1) #12
  %.b163 = load i1, ptr @hrtimer_interrupt.__already_done, align 1
  br i1 %.b163, label %if.end88.cleanup_crit_edge, label %if.then107, !prof !140

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then107:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hrtimer_interrupt.__already_done, align 1
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i64 noundef %sub) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.end88.cleanup_crit_edge, %if.then46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq_irqoff(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__hrtimer_run_queues(ptr noundef %cpu_base, i64 noundef %now, i32 noundef %flags, i32 noundef %active_mask) unnamed_addr #5 align 64 {
entry:
  %basenow = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 2
  %0 = ptrtoint ptr %active_bases to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_bases, align 16
  %and = and i32 %1, %active_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i27 = icmp eq i32 %and, 0
  br i1 %tobool.not.i27, label %entry.while.end10_crit_edge, label %__next_base.exit.lr.ph

entry.while.end10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end10

__next_base.exit.lr.ph:                           ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %cpu_base, i32 0, i32 4
  br label %__next_base.exit

__next_base.exit:                                 ; preds = %while.end.__next_base.exit_crit_edge, %__next_base.exit.lr.ph
  %active.028 = phi i32 [ %and, %__next_base.exit.lr.ph ], [ %and.i, %while.end.__next_base.exit_crit_edge ]
  %2 = call i32 @llvm.cttz.i32(i32 %active.028, i1 true) #12, !range !143
  %shl.i = shl nuw i32 1, %2
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %active.028, %neg.i
  %arrayidx.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %2
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %__next_base.exit.while.end10_crit_edge, label %while.body

__next_base.exit.while.end10_crit_edge:           ; preds = %__next_base.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end10

while.body:                                       ; preds = %__next_base.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %basenow) #12
  %offset = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %2, i32 7
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset, align 8
  %add = add i64 %4, %now
  %5 = ptrtoint ptr %basenow to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %add, ptr %basenow, align 8
  %active2 = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %2, i32 5
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %active2, i32 0, i32 1
  %6 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool4.not26 = icmp eq ptr %7, null
  br i1 %tobool4.not26, label %while.body.while.end_crit_edge, label %while.body5.lr.ph

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body5.lr.ph:                                ; preds = %while.body
  %running.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %2, i32 4
  %seq.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %2, i32 3
  %index.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %2, i32 1
  br label %while.body5

while.body5:                                      ; preds = %__run_hrtimer.exit.while.body5_crit_edge, %while.body5.lr.ph
  %8 = phi ptr [ %7, %while.body5.lr.ph ], [ %60, %__run_hrtimer.exit.while.body5_crit_edge ]
  %9 = ptrtoint ptr %basenow to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %basenow, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %_softexpires.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp = icmp slt i64 %10, %12
  br i1 %cmp, label %while.body5.while.end_crit_edge, label %if.end

while.body5.while.end_crit_edge:                  ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i19 = icmp eq i32 %13, 0
  br i1 %tobool.not.i19, label %if.end.if.end.i20_crit_edge, label %land.rhs.i

if.end.if.end.i20_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i20_crit_edge, !prof !150

land.rhs.i.if.end.i20_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1651, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i20

if.end.i20:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i20_crit_edge, %if.end.if.end.i20_crit_edge
  call void @debug_object_deactivate(ptr noundef nonnull %8, ptr noundef nonnull @hrtimer_debug_descr) #12
  call fastcc void @trace_hrtimer_cancel(ptr noundef nonnull %8) #12
  %14 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %running.i, align 8
  %15 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq.i, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %seq.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  %17 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq.i, align 4
  %inc4.i.i = add i32 %18, 1
  store i32 %inc4.i.i, ptr %seq.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 8
  %state2.i.i = getelementptr inbounds %struct.hrtimer, ptr %8, i32 0, i32 4
  %21 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %state2.i.i, align 8
  store volatile i8 0, ptr %state2.i.i, align 8
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.end.i20.__remove_hrtimer.exit.i_crit_edge, label %if.end.i.i

if.end.i20.__remove_hrtimer.exit.i_crit_edge:     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remove_hrtimer.exit.i

if.end.i.i:                                       ; preds = %if.end.i20
  %call.i138.i = call zeroext i1 @timerqueue_del(ptr noundef %active2, ptr noundef nonnull %8) #12
  br i1 %call.i138.i, label %if.end.i.i.__remove_hrtimer.exit.i_crit_edge, label %if.then10.i.i

if.end.i.i.__remove_hrtimer.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remove_hrtimer.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl nuw i32 1, %25
  %neg.i.i = xor i32 %shl.i.i, -1
  %active_bases.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %20, i32 0, i32 2
  %26 = ptrtoint ptr %active_bases.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active_bases.i.i, align 16
  %and11.i.i = and i32 %27, %neg.i.i
  store i32 %and11.i.i, ptr %active_bases.i.i, align 16
  br label %__remove_hrtimer.exit.i

__remove_hrtimer.exit.i:                          ; preds = %if.then10.i.i, %if.end.i.i.__remove_hrtimer.exit.i_crit_edge, %if.end.i20.__remove_hrtimer.exit.i_crit_edge
  %function.i = getelementptr inbounds %struct.hrtimer, ptr %8, i32 0, i32 2
  %28 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %function.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cpu_base, i32 noundef %flags) #12
  call fastcc void @trace_hrtimer_expire_entry(ptr noundef nonnull %8, ptr noundef nonnull %basenow) #12
  %is_hard.i = getelementptr inbounds %struct.hrtimer, ptr %8, i32 0, i32 7
  %30 = ptrtoint ptr %is_hard.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_hard.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not.i = icmp eq i8 %31, 0
  br i1 %tobool31.not.i, label %if.then42.i, label %if.end34.i

if.end34.i:                                       ; preds = %__remove_hrtimer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call39.i = call i32 %29(ptr noundef nonnull %8) #12
  br label %do.end48.i

if.then42.i:                                      ; preds = %__remove_hrtimer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i, align 8
  %irq_config.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 140
  %36 = ptrtoint ptr %irq_config.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %irq_config.i, align 8
  %call39147.i = call i32 %29(ptr noundef nonnull %8) #12
  %37 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i139.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i139.i to ptr
  %task44.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task44.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task44.i, align 8
  %irq_config45.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 140
  %41 = ptrtoint ptr %irq_config45.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %irq_config45.i, align 8
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then42.i, %if.end34.i
  %call39148.i = phi i32 [ %call39147.i, %if.then42.i ], [ %call39.i, %if.end34.i ]
  call fastcc void @trace_hrtimer_expire_exit(ptr noundef nonnull %8) #12
  call void @_raw_spin_lock_irq(ptr noundef %cpu_base) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39148.i)
  %cmp50.not.i = icmp eq i32 %call39148.i, 0
  br i1 %cmp50.not.i, label %do.end48.i.if.end56.i_crit_edge, label %land.lhs.true.i

do.end48.i.if.end56.i_crit_edge:                  ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

land.lhs.true.i:                                  ; preds = %do.end48.i
  %42 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %state2.i.i, align 8
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool53.not.i = icmp eq i8 %44, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %land.lhs.true.i.if.end56.i_crit_edge

land.lhs.true.i.if.end56.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then54.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call i32 @debug_object_activate(ptr noundef nonnull %8, ptr noundef nonnull @hrtimer_debug_descr) #12
  call fastcc void @trace_hrtimer_start(ptr noundef nonnull %8, i32 noundef 0) #12
  %45 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i.i, align 4
  %shl.i141.i = shl nuw i32 1, %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 8
  %active_bases.i142.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %active_bases.i142.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %active_bases.i142.i, align 16
  %or.i.i = or i32 %50, %shl.i141.i
  store i32 %or.i.i, ptr %active_bases.i142.i, align 16
  %51 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store volatile i8 1, ptr %state2.i.i, align 8
  %call.i144.i = call zeroext i1 @timerqueue_add(ptr noundef %active2, ptr noundef nonnull %8) #12
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %land.lhs.true.i.if.end56.i_crit_edge, %do.end48.i.if.end56.i_crit_edge
  %52 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seq.i, align 4
  %inc.i145.i = add i32 %53, 1
  store i32 %inc.i145.i, ptr %seq.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  %54 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seq.i, align 4
  %inc4.i146.i = add i32 %55, 1
  store i32 %inc4.i146.i, ptr %seq.i, align 4
  %56 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %running.i, align 8
  %cmp60.not.i = icmp eq ptr %57, %8
  br i1 %cmp60.not.i, label %if.end56.i.__run_hrtimer.exit_crit_edge, label %land.rhs69.i

if.end56.i.__run_hrtimer.exit_crit_edge:          ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__run_hrtimer.exit

land.rhs69.i:                                     ; preds = %if.end56.i
  %.b137.i = load i1, ptr @__run_hrtimer.__already_done, align 1
  br i1 %.b137.i, label %land.rhs69.i.__run_hrtimer.exit_crit_edge, label %if.then80.i, !prof !140

land.rhs69.i.__run_hrtimer.exit_crit_edge:        ; preds = %land.rhs69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__run_hrtimer.exit

if.then80.i:                                      ; preds = %land.rhs69.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__run_hrtimer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1713, i32 noundef 9, ptr noundef null) #12
  br label %__run_hrtimer.exit

__run_hrtimer.exit:                               ; preds = %if.then80.i, %land.rhs69.i.__run_hrtimer.exit_crit_edge, %if.end56.i.__run_hrtimer.exit_crit_edge
  %58 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %running.i, align 8
  %59 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool4.not = icmp eq ptr %60, null
  br i1 %tobool4.not, label %__run_hrtimer.exit.while.end_crit_edge, label %__run_hrtimer.exit.while.body5_crit_edge

__run_hrtimer.exit.while.body5_crit_edge:         ; preds = %__run_hrtimer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5

__run_hrtimer.exit.while.end_crit_edge:           ; preds = %__run_hrtimer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %__run_hrtimer.exit.while.end_crit_edge, %while.body5.while.end_crit_edge, %while.body.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %basenow) #12
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.end.while.end10_crit_edge, label %while.end.__next_base.exit_crit_edge

while.end.__next_base.exit_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit

while.end.while.end10_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end10

while.end10:                                      ; preds = %while.end.while.end10_crit_edge, %__next_base.exit.while.end10_crit_edge, %entry.while.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @hrtimer_update_next_event(ptr noundef %cpu_base) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 4
  %0 = ptrtoint ptr %softirq_activated to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %softirq_activated, align 8
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %entry
  %active_bases.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 2
  %2 = ptrtoint ptr %active_bases.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_bases.i, align 16
  %and2.i = and i32 %3, 240
  %softirq_next_timer.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 12
  %4 = ptrtoint ptr %softirq_next_timer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %softirq_next_timer.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i43.i.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i43.i.i, label %if.then.i.__hrtimer_get_next_event.exit_crit_edge, label %__next_base.exit.lr.ph.i.i

if.then.i.__hrtimer_get_next_event.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit

__next_base.exit.lr.ph.i.i:                       ; preds = %if.then.i
  %next_timer.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 10
  br label %__next_base.exit.i.i

__next_base.exit.i.i:                             ; preds = %cleanup.i.i.__next_base.exit.i.i_crit_edge, %__next_base.exit.lr.ph.i.i
  %expires_next.addr.045.i.i = phi i64 [ 9223372036854775807, %__next_base.exit.lr.ph.i.i ], [ %expires_next.addr.2.i.i, %cleanup.i.i.__next_base.exit.i.i_crit_edge ]
  %active.addr.044.i.i = phi i32 [ %and2.i, %__next_base.exit.lr.ph.i.i ], [ %and.i.i.i, %cleanup.i.i.__next_base.exit.i.i_crit_edge ]
  %5 = tail call i32 @llvm.cttz.i32(i32 %active.addr.044.i.i, i1 true) #12, !range !143
  %shl.i.i.i = shl nuw i32 1, %5
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i.i = and i32 %active.addr.044.i.i, %neg.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge, label %while.body.i.i

__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge: ; preds = %__next_base.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit

while.body.i.i:                                   ; preds = %__next_base.exit.i.i
  %rb_leftmost.i.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %cmp.i.i = icmp eq ptr %7, null
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.i.if.end9.i.i_crit_edge

while.body.i.i.if.end9.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %call3.i.i = tail call ptr @timerqueue_iterate_next(ptr noundef null) #12
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.then.i.i.cleanup.i.i_crit_edge, label %if.then.i.i.if.end9.i.i_crit_edge

if.then.i.i.if.end9.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end9.i.i:                                      ; preds = %if.then.i.i.if.end9.i.i_crit_edge, %while.body.i.i.if.end9.i.i_crit_edge
  %timer.0.i.i = phi ptr [ %7, %while.body.i.i.if.end9.i.i_crit_edge ], [ %call3.i.i, %if.then.i.i.if.end9.i.i_crit_edge ]
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %expires.i.i.i, align 8
  %offset.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5, i32 7
  %10 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset.i.i, align 8
  %sub.i.i = sub i64 %9, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %expires_next.addr.045.i.i)
  %cmp11.i.not.i = icmp slt i64 %sub.i.i, %expires_next.addr.045.i.i
  %12 = tail call i64 @llvm.smin.i64(i64 %sub.i.i, i64 %expires_next.addr.045.i.i) #12
  br i1 %cmp11.i.not.i, label %if.end15.i.i, label %if.end9.i.i.cleanup.i.i_crit_edge

if.end9.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end15.i.i:                                     ; preds = %if.end9.i.i
  %is_soft.i.i = getelementptr inbounds %struct.hrtimer, ptr %timer.0.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %is_soft.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_soft.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool16.not.i.i, label %if.else.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %softirq_next_timer.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %timer.0.i.i, ptr %softirq_next_timer.i, align 32
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %next_timer.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %timer.0.i.i, ptr %next_timer.i.i, align 16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i.i, %if.then17.i.i, %if.end9.i.i.cleanup.i.i_crit_edge, %if.then.i.i.cleanup.i.i_crit_edge
  %expires_next.addr.2.i.i = phi i64 [ %expires_next.addr.045.i.i, %if.then.i.i.cleanup.i.i_crit_edge ], [ %sub.i.i, %if.then17.i.i ], [ %sub.i.i, %if.else.i.i ], [ %12, %if.end9.i.i.cleanup.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge, label %cleanup.i.i.__next_base.exit.i.i_crit_edge

cleanup.i.i.__next_base.exit.i.i_crit_edge:       ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i.i

cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit

__hrtimer_get_next_event.exit:                    ; preds = %cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge, %__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge, %if.then.i.__hrtimer_get_next_event.exit_crit_edge
  %expires_next.addr.0.lcssa.i.i = phi i64 [ 9223372036854775807, %if.then.i.__hrtimer_get_next_event.exit_crit_edge ], [ %expires_next.addr.2.i.i, %cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge ], [ %expires_next.addr.045.i.i, %__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge ]
  %17 = tail call i64 @llvm.smax.i64(i64 %expires_next.addr.0.lcssa.i.i, i64 0) #12
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 11
  %18 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %softirq_expires_next, align 8
  br label %if.end

if.end:                                           ; preds = %__hrtimer_get_next_event.exit, %entry.if.end_crit_edge
  %soft.0 = phi i64 [ 9223372036854775807, %entry.if.end_crit_edge ], [ %17, %__hrtimer_get_next_event.exit ]
  %active_bases7.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 2
  %19 = ptrtoint ptr %active_bases7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_bases7.i, align 16
  %and8.i = and i32 %20, 15
  %next_timer9.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 10
  %21 = ptrtoint ptr %next_timer9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %next_timer9.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i43.i22.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i43.i22.i, label %if.end.__hrtimer_get_next_event.exit17_crit_edge, label %__next_base.exit.lr.ph.i25.i

if.end.__hrtimer_get_next_event.exit17_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit17

__next_base.exit.lr.ph.i25.i:                     ; preds = %if.end
  %softirq_next_timer.i23.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 12
  br label %__next_base.exit.i33.i

__next_base.exit.i33.i:                           ; preds = %cleanup.i53.i.__next_base.exit.i33.i_crit_edge, %__next_base.exit.lr.ph.i25.i
  %expires_next.addr.045.i26.i = phi i64 [ 9223372036854775807, %__next_base.exit.lr.ph.i25.i ], [ %expires_next.addr.2.i51.i, %cleanup.i53.i.__next_base.exit.i33.i_crit_edge ]
  %active.addr.044.i27.i = phi i32 [ %and8.i, %__next_base.exit.lr.ph.i25.i ], [ %and.i.i30.i, %cleanup.i53.i.__next_base.exit.i33.i_crit_edge ]
  %22 = tail call i32 @llvm.cttz.i32(i32 %active.addr.044.i27.i, i1 true) #12, !range !143
  %shl.i.i28.i = shl nuw i32 1, %22
  %neg.i.i29.i = xor i32 %shl.i.i28.i, -1
  %and.i.i30.i = and i32 %active.addr.044.i27.i, %neg.i.i29.i
  %arrayidx.i.i31.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %22
  %tobool.not.i32.i = icmp eq ptr %arrayidx.i.i31.i, null
  br i1 %tobool.not.i32.i, label %__next_base.exit.i33.i.__hrtimer_get_next_event.exit17_crit_edge, label %while.body.i36.i

__next_base.exit.i33.i.__hrtimer_get_next_event.exit17_crit_edge: ; preds = %__next_base.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit17

while.body.i36.i:                                 ; preds = %__next_base.exit.i33.i
  %rb_leftmost.i.i34.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %22, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %rb_leftmost.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rb_leftmost.i.i34.i, align 4
  %cmp.i35.i = icmp eq ptr %24, null
  br i1 %cmp.i35.i, label %if.then.i39.i, label %while.body.i36.i.if.end9.i45.i_crit_edge

while.body.i36.i.if.end9.i45.i_crit_edge:         ; preds = %while.body.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i45.i

if.then.i39.i:                                    ; preds = %while.body.i36.i
  %call3.i37.i = tail call ptr @timerqueue_iterate_next(ptr noundef null) #12
  %tobool4.not.i38.i = icmp eq ptr %call3.i37.i, null
  br i1 %tobool4.not.i38.i, label %if.then.i39.i.cleanup.i53.i_crit_edge, label %if.then.i39.i.if.end9.i45.i_crit_edge

if.then.i39.i.if.end9.i45.i_crit_edge:            ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i45.i

if.then.i39.i.cleanup.i53.i_crit_edge:            ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i53.i

if.end9.i45.i:                                    ; preds = %if.then.i39.i.if.end9.i45.i_crit_edge, %while.body.i36.i.if.end9.i45.i_crit_edge
  %timer.0.i40.i = phi ptr [ %24, %while.body.i36.i.if.end9.i45.i_crit_edge ], [ %call3.i37.i, %if.then.i39.i.if.end9.i45.i_crit_edge ]
  %expires.i.i41.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer.0.i40.i, i32 0, i32 1
  %25 = ptrtoint ptr %expires.i.i41.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %expires.i.i41.i, align 8
  %offset.i42.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %22, i32 7
  %27 = ptrtoint ptr %offset.i42.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset.i42.i, align 8
  %sub.i43.i = sub i64 %26, %28
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i43.i, i64 %expires_next.addr.045.i26.i)
  %cmp11.i44.not.i = icmp slt i64 %sub.i43.i, %expires_next.addr.045.i26.i
  %29 = tail call i64 @llvm.smin.i64(i64 %sub.i43.i, i64 %expires_next.addr.045.i26.i) #12
  br i1 %cmp11.i44.not.i, label %if.end15.i48.i, label %if.end9.i45.i.cleanup.i53.i_crit_edge

if.end9.i45.i.cleanup.i53.i_crit_edge:            ; preds = %if.end9.i45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i53.i

if.end15.i48.i:                                   ; preds = %if.end9.i45.i
  %is_soft.i46.i = getelementptr inbounds %struct.hrtimer, ptr %timer.0.i40.i, i32 0, i32 6
  %30 = ptrtoint ptr %is_soft.i46.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_soft.i46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool16.not.i47.i = icmp eq i8 %31, 0
  br i1 %tobool16.not.i47.i, label %if.else.i50.i, label %if.then17.i49.i

if.then17.i49.i:                                  ; preds = %if.end15.i48.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %softirq_next_timer.i23.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %timer.0.i40.i, ptr %softirq_next_timer.i23.i, align 32
  br label %cleanup.i53.i

if.else.i50.i:                                    ; preds = %if.end15.i48.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %next_timer9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %timer.0.i40.i, ptr %next_timer9.i, align 16
  br label %cleanup.i53.i

cleanup.i53.i:                                    ; preds = %if.else.i50.i, %if.then17.i49.i, %if.end9.i45.i.cleanup.i53.i_crit_edge, %if.then.i39.i.cleanup.i53.i_crit_edge
  %expires_next.addr.2.i51.i = phi i64 [ %expires_next.addr.045.i26.i, %if.then.i39.i.cleanup.i53.i_crit_edge ], [ %sub.i43.i, %if.then17.i49.i ], [ %sub.i43.i, %if.else.i50.i ], [ %29, %if.end9.i45.i.cleanup.i53.i_crit_edge ]
  %tobool.not.i.i52.i = icmp eq i32 %and.i.i30.i, 0
  br i1 %tobool.not.i.i52.i, label %cleanup.i53.i.__hrtimer_get_next_event.exit17_crit_edge, label %cleanup.i53.i.__next_base.exit.i33.i_crit_edge

cleanup.i53.i.__next_base.exit.i33.i_crit_edge:   ; preds = %cleanup.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i33.i

cleanup.i53.i.__hrtimer_get_next_event.exit17_crit_edge: ; preds = %cleanup.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit17

__hrtimer_get_next_event.exit17:                  ; preds = %cleanup.i53.i.__hrtimer_get_next_event.exit17_crit_edge, %__next_base.exit.i33.i.__hrtimer_get_next_event.exit17_crit_edge, %if.end.__hrtimer_get_next_event.exit17_crit_edge
  %expires_next.addr.0.lcssa.i54.i = phi i64 [ 9223372036854775807, %if.end.__hrtimer_get_next_event.exit17_crit_edge ], [ %expires_next.addr.2.i51.i, %cleanup.i53.i.__hrtimer_get_next_event.exit17_crit_edge ], [ %expires_next.addr.045.i26.i, %__next_base.exit.i33.i.__hrtimer_get_next_event.exit17_crit_edge ]
  %34 = tail call i64 @llvm.smax.i64(i64 %expires_next.addr.0.lcssa.i54.i, i64 0) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %soft.0)
  %cmp = icmp ugt i64 %34, %soft.0
  br i1 %cmp, label %if.then2, label %__hrtimer_get_next_event.exit17.if.end3_crit_edge

__hrtimer_get_next_event.exit17.if.end3_crit_edge: ; preds = %__hrtimer_get_next_event.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %__hrtimer_get_next_event.exit17
  call void @__sanitizer_cov_trace_pc() #14
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 12
  %35 = ptrtoint ptr %softirq_next_timer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %softirq_next_timer, align 32
  %37 = ptrtoint ptr %next_timer9.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %next_timer9.i, align 16
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %__hrtimer_get_next_event.exit17.if.end3_crit_edge
  %expires_next.0 = phi i64 [ %soft.0, %if.then2 ], [ %34, %__hrtimer_get_next_event.exit17.if.end3_crit_edge ]
  ret i64 %expires_next.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_program_event(i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_run_queues() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %hres_active.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %hres_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8, ptr @hrtimer_hres_enabled, align 1, !range !162
  %9 = xor i8 %8, 1
  %10 = zext i8 %9 to i32
  %call5 = tail call i32 @tick_check_oneshot_change(i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body9, label %if.then7

if.then7:                                         ; preds = %if.end
  %11 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @hrtimer_bases to i32)
  %17 = inttoptr i32 %add.i to ptr
  %call2.i = tail call i32 @tick_init_highres() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end5.i

do.end5.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %cpu7.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cpu7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu7.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %19) #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %hres_active.i39 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %hres_active.i39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i40 = load i8, ptr %hres_active.i39, align 8
  %bf.set.i = or i8 %bf.load.i40, -128
  store i8 %bf.set.i, ptr %hres_active.i39, align 8
  store i32 1, ptr @hrtimer_resolution, align 4
  tail call void @tick_setup_sched_timer() #12
  tail call void @retrigger_next_event(ptr noundef null) #12
  br label %cleanup

do.body9:                                         ; preds = %if.end
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 1, i32 7
  %offset3.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 2, i32 7
  %offset6.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 3, i32 7
  %clock_was_set_seq.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 3
  %call.i = tail call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i, ptr noundef %offset3.i, ptr noundef %offset6.i) #12
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset.i, align 8
  %offset9.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 5, i32 7
  %23 = ptrtoint ptr %offset9.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %offset9.i, align 8
  %24 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset3.i, align 8
  %offset12.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 6, i32 7
  %26 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %offset12.i, align 8
  %27 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset6.i, align 8
  %offset15.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 7, i32 7
  %29 = ptrtoint ptr %offset15.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %offset15.i, align 8
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 11
  %30 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %softirq_expires_next, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %31)
  %cmp.i.i = icmp slt i64 %call.i, %31
  br i1 %cmp.i.i, label %do.body9.if.end18_crit_edge, label %if.then16

do.body9.if.end18_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 9223372036854775807, ptr %softirq_expires_next, align 8
  %33 = ptrtoint ptr %hres_active.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %hres_active.i, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %hres_active.i, align 8
  tail call void @raise_softirq_irqoff(i32 noundef 8) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body9.if.end18_crit_edge
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %call.i, i32 noundef %call11, i32 noundef 15)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.i, %do.end5.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_check_oneshot_change(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_sleeper_start_expires(ptr noundef %sl, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_softexpires.i.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 1
  %0 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %_softexpires.i.i, align 8
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %sl, i32 0, i32 1
  %2 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %expires.i.i, align 8
  %sub.i = sub i64 %3, %1
  tail call void @hrtimer_start_range_ns(ptr noundef %sl, i64 noundef %1, i64 noundef %sub.i, i32 noundef %mode) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimer_init_sleeper(ptr noundef %sl, i32 noundef %clock_id, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_init(ptr noundef %sl, ptr noundef nonnull @hrtimer_debug_descr) #12
  tail call fastcc void @trace_hrtimer_init(ptr noundef %sl, i32 noundef %clock_id, i32 noundef %mode) #12
  %0 = call ptr @memset(ptr %sl, i32 0, i32 48)
  %1 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock_id)
  %cmp.i.i = icmp eq i32 %clock_id, 0
  %and3.i.i = and i32 %mode, 1
  %clock_id.addr.0.i.i = select i1 %cmp.i.i, i32 %and3.i.i, i32 %clock_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %clock_id.addr.0.i.i)
  %cmp.i.i.i = icmp slt i32 %clock_id.addr.0.i.i, 16
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %entry.do.end.i.i.i_crit_edge, !prof !140

entry.do.end.i.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  %arrayidx.i.i.i = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %clock_id.addr.0.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  %9 = and i32 %clock_id.addr.0.i.i, 1073741823
  %10 = lshr i32 63356, %9
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.not.not.not.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp2.not.not.not.i.i.i, label %if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge, label %if.then.i.i.i.do.end.i.i.i_crit_edge

if.then.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_init_sleeper.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i.i.do.end.i.i.i_crit_edge, %entry.do.end.i.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %clock_id.addr.0.i.i) #12
  br label %__hrtimer_init_sleeper.exit

__hrtimer_init_sleeper.exit:                      ; preds = %do.end.i.i.i, %if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge
  %retval.1.i.i.i = phi i32 [ %8, %if.then.i.i.i.__hrtimer_init_sleeper.exit_crit_edge ], [ 0, %do.end.i.i.i ]
  %and.i.i = and i32 %mode, 4
  %and.lobit.i.i = lshr exact i32 %and.i.i, 2
  %12 = trunc i32 %and.lobit.i.i to i8
  %add.i.i = add i32 %6, ptrtoint (ptr @hrtimer_bases to i32)
  %13 = inttoptr i32 %add.i.i to ptr
  %add7.i.i = add i32 %retval.1.i.i.i, %and.i.i
  %is_soft.i.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 6
  %14 = ptrtoint ptr %is_soft.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %is_soft.i.i, align 2
  %15 = trunc i32 %mode to i8
  %16 = lshr i8 %15, 3
  %17 = and i8 %16, 1
  %is_hard.i.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 7
  %18 = ptrtoint ptr %is_hard.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %is_hard.i.i, align 1
  %arrayidx14.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %13, i32 0, i32 13, i32 %add7.i.i
  %base15.i.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 3
  %19 = ptrtoint ptr %base15.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx14.i.i, ptr %base15.i.i, align 4
  %20 = ptrtoint ptr %sl to i32
  %21 = ptrtoint ptr %sl to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sl, align 8
  %function.i = getelementptr inbounds %struct.hrtimer, ptr %sl, i32 0, i32 2
  %22 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hrtimer_wakeup, ptr %function.i, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i5.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i5.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %task2.i = getelementptr inbounds %struct.hrtimer_sleeper, ptr %sl, i32 0, i32 1
  %27 = ptrtoint ptr %task2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %task2.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nanosleep_copyout(ptr nocapture noundef readonly %restart, ptr noundef %ts) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call = tail call i32 @put_old_timespec32(ptr noundef %ts, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call2 = tail call i32 @put_timespec64(ptr noundef %ts, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2030, 0\0A.popsection", ""() #12, !srcloc !163
  unreachable

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -516, %sw.epilog ], [ -14, %sw.bb.return_crit_edge ], [ -14, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hrtimer_nanosleep(i64 noundef %rqtp, i32 noundef %mode, i32 noundef %clockid) local_unnamed_addr #5 align 64 {
entry:
  %t = alloca %struct.hrtimer_sleeper, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %t) #12
  %0 = call ptr @memset(ptr %t, i32 255, i32 56)
  %1 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 189
  %7 = ptrtoint ptr %timer_slack_ns to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %timer_slack_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %6)
  %cmp.i.i = icmp ugt i32 %6, 99
  br i1 %cmp.i.i, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %slack.0 = phi i64 [ 0, %if.then ], [ %8, %lor.lhs.false.if.end_crit_edge ]
  call void @debug_object_init_on_stack(ptr noundef nonnull %t, ptr noundef nonnull @hrtimer_debug_descr) #12
  %9 = call ptr @memset(ptr %t, i32 0, i32 48)
  %10 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clockid)
  %cmp.i.i.i = icmp eq i32 %clockid, 0
  %and3.i.i.i = and i32 %mode, 1
  %clock_id.addr.0.i.i.i = select i1 %cmp.i.i.i, i32 %and3.i.i.i, i32 %clockid
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %clock_id.addr.0.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %clock_id.addr.0.i.i.i, 16
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.do.end.i.i.i.i_crit_edge, !prof !140

if.end.do.end.i.i.i.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %clock_id.addr.0.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %18 = and i32 %clock_id.addr.0.i.i.i, 1073741823
  %19 = lshr i32 63356, %18
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2.not.not.not.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp2.not.not.not.i.i.i.i, label %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge, label %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge

if.then.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_init_sleeper_on_stack.exit

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end.do.end.i.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %clock_id.addr.0.i.i.i) #12
  br label %hrtimer_init_sleeper_on_stack.exit

hrtimer_init_sleeper_on_stack.exit:               ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge
  %retval.1.i.i.i.i = phi i32 [ %17, %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge ], [ 0, %do.end.i.i.i.i ]
  %and.i.i.i = and i32 %mode, 4
  %and.lobit.i.i.i = lshr exact i32 %and.i.i.i, 2
  %21 = trunc i32 %and.lobit.i.i.i to i8
  %add.i.i.i = add i32 %15, ptrtoint (ptr @hrtimer_bases to i32)
  %22 = inttoptr i32 %add.i.i.i to ptr
  %add7.i.i.i = add i32 %retval.1.i.i.i.i, %and.i.i.i
  %is_soft.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 6
  %23 = ptrtoint ptr %is_soft.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %is_soft.i.i.i, align 2
  %24 = trunc i32 %mode to i8
  %25 = lshr i8 %24, 3
  %26 = and i8 %25, 1
  %is_hard.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 7
  %27 = ptrtoint ptr %is_hard.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %is_hard.i.i.i, align 1
  %arrayidx14.i.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %22, i32 0, i32 13, i32 %add7.i.i.i
  %base15.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 3
  %28 = ptrtoint ptr %base15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx14.i.i.i, ptr %base15.i.i.i, align 4
  %29 = ptrtoint ptr %t to i32
  %30 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %t, align 8
  %function.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 2
  %31 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hrtimer_wakeup, ptr %function.i.i, align 8
  %32 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i5.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i5.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i, align 8
  %task2.i.i = getelementptr inbounds %struct.hrtimer_sleeper, ptr %t, i32 0, i32 1
  %36 = ptrtoint ptr %task2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %task2.i.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 1
  %37 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %rqtp, ptr %_softexpires.i, align 8
  %add.i.i = add i64 %slack.0, %rqtp
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i)
  %cmp.i.i29 = icmp slt i64 %add.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %rqtp)
  %cmp1.i.i = icmp slt i64 %add.i.i, %rqtp
  %or.cond.i.i = or i1 %cmp.i.i29, %cmp1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %slack.0)
  %cmp3.i.i = icmp slt i64 %add.i.i, %slack.0
  %or.cond9.i.i = or i1 %cmp3.i.i, %or.cond.i.i
  %spec.select.i.i = select i1 %or.cond9.i.i, i64 9223372036854775807, i64 %add.i.i
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %t, i32 0, i32 1
  %38 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %spec.select.i.i, ptr %expires.i, align 8
  %call8 = call fastcc i32 @do_nanosleep(ptr noundef nonnull %t, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -516, i32 %call8)
  %cmp.not = icmp eq i32 %call8, -516
  br i1 %cmp.not, label %if.end10, label %hrtimer_init_sleeper_on_stack.exit.out_crit_edge

hrtimer_init_sleeper_on_stack.exit.out_crit_edge: ; preds = %hrtimer_init_sleeper_on_stack.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %hrtimer_init_sleeper_on_stack.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp11 = icmp eq i32 %mode, 0
  br i1 %cmp11, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %base15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base15.i.i.i, align 4
  %clockid17 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %clockid17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clockid17, align 8
  %45 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 67, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %45, align 8
  %47 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %expires.i, align 8
  %expires = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 67, i32 2, i32 0, i32 4
  %49 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %expires, align 8
  %fn1.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 67, i32 1
  %50 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @hrtimer_nanosleep_restart, ptr %fn1.i, align 4
  br label %out

out:                                              ; preds = %if.end13, %if.end10.out_crit_edge, %hrtimer_init_sleeper_on_stack.exit.out_crit_edge
  %ret.0 = phi i32 [ %call8, %hrtimer_init_sleeper_on_stack.exit.out_crit_edge ], [ -516, %if.end13 ], [ -514, %if.end10.out_crit_edge ]
  call void @debug_object_free(ptr noundef nonnull %t, ptr noundef nonnull @hrtimer_debug_descr) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_nanosleep(ptr noundef %t, i32 noundef %mode) #5 section ".sched.text" align 64 {
entry:
  %rmt = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_softexpires.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 1
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %t, i32 0, i32 1
  %task61 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %t, i32 0, i32 1
  br label %__here

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %entry
  %mode.addr.0 = phi i32 [ %mode, %entry ], [ 0, %signal_pending.exit.__here_crit_edge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@do_nanosleep, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !164
  %7 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %_softexpires.i.i.i, align 8
  %9 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i = sub i64 %10, %8
  tail call void @hrtimer_start_range_ns(ptr noundef %t, i64 noundef %8, i64 noundef %sub.i.i, i32 noundef %mode.addr.0) #12
  %11 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task61, align 8
  %tobool62.not = icmp eq ptr %12, null
  br i1 %tobool62.not, label %__here.if.end70_crit_edge, label %if.then69, !prof !150

__here.if.end70_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then69:                                        ; preds = %__here
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %18, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  tail call void @schedule() #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %24, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !165
  %25 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then69.if.end.i.i.i_crit_edge

if.then69.if.end.i.i.i_crit_edge:                 ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_check_no_locks_held() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then69.if.end.i.i.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 57) #12
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %35 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.if.end70_crit_edge, label %freezing.exit.i.i.i.i, !prof !140

if.end.i.i.i.if.end70_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %34) #12
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.if.end70_crit_edge, !prof !150

freezing.exit.i.i.i.i.if.end70_crit_edge:         ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %if.end70

if.end70:                                         ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.if.end70_crit_edge, %if.end.i.i.i.if.end70_crit_edge, %__here.if.end70_crit_edge
  %call5.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %t) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end70.if.then.i_crit_edge, label %if.end70.hrtimer_cancel.exit_crit_edge

if.end70.hrtimer_cancel.exit_crit_edge:           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

if.end70.if.then.i_crit_edge:                     ; preds = %if.end70
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.end70.if.then.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !159
  %call.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %t) #12
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.if.then.i_crit_edge, label %if.then.i.hrtimer_cancel.exit_crit_edge

if.then.i.hrtimer_cancel.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

hrtimer_cancel.exit:                              ; preds = %if.then.i.hrtimer_cancel.exit_crit_edge, %if.end70.hrtimer_cancel.exit_crit_edge
  %36 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task61, align 8
  %tobool74.not = icmp eq ptr %37, null
  br i1 %tobool74.not, label %hrtimer_cancel.exit.__here134_crit_edge, label %land.rhs75

hrtimer_cancel.exit.__here134_crit_edge:          ; preds = %hrtimer_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here134

land.rhs75:                                       ; preds = %hrtimer_cancel.exit
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.rhs75.__here134_crit_edge, !prof !140

land.rhs75.__here134_crit_edge:                   ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here134

signal_pending.exit:                              ; preds = %land.rhs75
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %41, align 4
  %and1.i.i.i.i.i = and i32 %46, 1
  %tobool79.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool79.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.__here134_crit_edge

signal_pending.exit.__here134_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here134

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here134:                                        ; preds = %signal_pending.exit.__here134_crit_edge, %land.rhs75.__here134_crit_edge, %hrtimer_cancel.exit.__here134_crit_edge
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %task_state_change138 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 212
  %49 = ptrtoint ptr %task_state_change138 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 ptrtoint (ptr blockaddress(@do_nanosleep, %__here134) to i32), ptr %task_state_change138, align 4
  %50 = load ptr, ptr %task, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %50, align 128
  %52 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task61, align 8
  %tobool156.not = icmp eq ptr %53, null
  br i1 %tobool156.not, label %__here134.cleanup171_crit_edge, label %if.end158

__here134.cleanup171_crit_edge:                   ; preds = %__here134
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup171

if.end158:                                        ; preds = %__here134
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %type = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 67, i32 2, i32 0, i32 1
  %56 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not = icmp eq i32 %57, 0
  br i1 %cmp.not, label %if.end158.cleanup171_crit_edge, label %if.then161

if.end158.cleanup171_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup171

if.then161:                                       ; preds = %if.end158
  %58 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %expires.i.i.i, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 3
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_time.i, align 4
  %call.i183 = tail call i64 %63() #12
  %sub.i = sub i64 %59, %call.i183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rmt) #12
  %64 = call ptr @memset(ptr %rmt, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp164 = icmp slt i64 %sub.i, 1
  br i1 %cmp164, label %if.then161.cleanup_crit_edge, label %if.end166

if.then161.cleanup_crit_edge:                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end166:                                        ; preds = %if.then161
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %rmt, i64 noundef %sub.i) #12
  %65 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %66, label %do.body.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end166
  %68 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 67, i32 2, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %call.i184 = call i32 @put_old_timespec32(ptr noundef nonnull %rmt, ptr noundef %70) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool.not.i185 = icmp eq i32 %call.i184, 0
  br i1 %tobool.not.i185, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end166
  %71 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 67, i32 2, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %call2.i = call i32 @put_timespec64(ptr noundef nonnull %rmt, ptr noundef %73) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2030, 0\0A.popsection", ""() #12, !srcloc !163
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb1.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %sw.bb1.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then161.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then161.cleanup_crit_edge ], [ -516, %sw.epilog.i ], [ -14, %sw.bb.i.cleanup_crit_edge ], [ -14, %sw.bb1.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rmt) #12
  br label %cleanup171

cleanup171:                                       ; preds = %cleanup, %if.end158.cleanup171_crit_edge, %__here134.cleanup171_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %__here134.cleanup171_crit_edge ], [ -516, %if.end158.cleanup171_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hrtimer_nanosleep_restart(ptr nocapture noundef readonly %restart) #5 section ".sched.text" align 64 {
entry:
  %t = alloca %struct.hrtimer_sleeper, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %t) #12
  %0 = call ptr @memset(ptr %t, i32 255, i32 56)
  %1 = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @debug_object_init_on_stack(ptr noundef nonnull %t, ptr noundef nonnull @hrtimer_debug_descr) #12
  %4 = call ptr @memset(ptr %t, i32 0, i32 48)
  %5 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.i.i.i.i = icmp slt i32 %3, 16
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %entry.do.end.i.i.i.i_crit_edge, !prof !140

entry.do.end.i.i.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %3
  %11 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %13 = and i32 %3, 1073741823
  %14 = lshr i32 63356, %13
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.not.not.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %cmp2.not.not.not.i.i.i.i, label %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge, label %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge

if.then.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_init_sleeper_on_stack.exit

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge, %entry.do.end.i.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %3) #12
  br label %hrtimer_init_sleeper_on_stack.exit

hrtimer_init_sleeper_on_stack.exit:               ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge
  %retval.1.i.i.i.i = phi i32 [ %12, %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge ], [ 0, %do.end.i.i.i.i ]
  %add.i.i.i = add i32 %10, ptrtoint (ptr @hrtimer_bases to i32)
  %16 = inttoptr i32 %add.i.i.i to ptr
  %is_soft.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 6
  %17 = ptrtoint ptr %is_soft.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_soft.i.i.i, align 2
  %is_hard.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 7
  %18 = ptrtoint ptr %is_hard.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_hard.i.i.i, align 1
  %arrayidx14.i.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %16, i32 0, i32 13, i32 %retval.1.i.i.i.i
  %base15.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 3
  %19 = ptrtoint ptr %base15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx14.i.i.i, ptr %base15.i.i.i, align 4
  %20 = ptrtoint ptr %t to i32
  %21 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %t, align 8
  %function.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 2
  %22 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hrtimer_wakeup, ptr %function.i.i, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i5.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i5.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i, align 8
  %task2.i.i = getelementptr inbounds %struct.hrtimer_sleeper, ptr %t, i32 0, i32 1
  %27 = ptrtoint ptr %task2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %task2.i.i, align 8
  %expires = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 4
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %expires, align 8
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %t, i32 0, i32 1
  %30 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %29, ptr %_softexpires.i, align 8
  %call = call fastcc i32 @do_nanosleep(ptr noundef nonnull %t, i32 noundef 0)
  call void @debug_object_free(ptr noundef nonnull %t, ptr noundef nonnull @hrtimer_debug_descr) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_nanosleep_time32(i32 noundef %rqtp, i32 noundef %rmtp) #5 align 64 {
entry:
  %tu.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rqtp to ptr
  %1 = inttoptr i32 %rmtp to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tu.i) #12
  %2 = call ptr @memset(ptr %tu.i, i32 255, i32 16)
  %call.i = call i32 @get_old_timespec32(ptr noundef nonnull %tu.i, ptr noundef %0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_nanosleep_time32.exit_crit_edge

entry.__do_sys_nanosleep_time32.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_nanosleep_time32.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %tu.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.i = icmp slt i64 %4, 0
  br i1 %cmp.i.i, label %if.end.i.__do_sys_nanosleep_time32.exit_crit_edge, label %timespec64_valid.exit.i

if.end.i.__do_sys_nanosleep_time32.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_nanosleep_time32.exit

timespec64_valid.exit.i:                          ; preds = %if.end.i
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %tu.i, i32 0, i32 1
  %5 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %6)
  %cmp1.i.i = icmp ult i32 %6, 1000000000
  br i1 %cmp1.i.i, label %if.end3.i, label %timespec64_valid.exit.i.__do_sys_nanosleep_time32.exit_crit_edge

timespec64_valid.exit.i.__do_sys_nanosleep_time32.exit_crit_edge: ; preds = %timespec64_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_nanosleep_time32.exit

if.end3.i:                                        ; preds = %timespec64_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rmtp)
  %tobool4.not.i = icmp eq i32 %rmtp, 0
  %cond.i = select i1 %tobool4.not.i, i32 0, i32 2
  %7 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %type.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 67, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %type.i, align 4
  %12 = load ptr, ptr %task.i, align 8
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 67, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %13, align 8
  %15 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %.fca.1.load.i = load i64, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %4)
  %cmp.i.i.i = icmp ugt i64 %4, 9223372035
  %ts.sroa.2.8.extract.shift.i.i = lshr i64 %.fca.1.load.i, 32
  %mul.i.i.i = mul i64 %4, 1000000000
  %add.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i, %mul.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 9223372036854775807, i64 %add.i.i.i, !prof !150
  %call10.i = call i32 @hrtimer_nanosleep(i64 noundef %retval.0.i.i.i, i32 noundef 1, i32 noundef 1) #12
  br label %__do_sys_nanosleep_time32.exit

__do_sys_nanosleep_time32.exit:                   ; preds = %if.end3.i, %timespec64_valid.exit.i.__do_sys_nanosleep_time32.exit_crit_edge, %if.end.i.__do_sys_nanosleep_time32.exit_crit_edge, %entry.__do_sys_nanosleep_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end3.i ], [ -14, %entry.__do_sys_nanosleep_time32.exit_crit_edge ], [ -22, %timespec64_valid.exit.i.__do_sys_nanosleep_time32.exit_crit_edge ], [ -22, %if.end.i.__do_sys_nanosleep_time32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tu.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hrtimers_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @hrtimer_bases to i32)
  %2 = inttoptr i32 %add to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 13, i32 %i.032
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %arrayidx2, align 8
  %seq = getelementptr %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 13, i32 %i.032, i32 3
  %dep_map.i = getelementptr inbounds %struct.seqcount, ptr %seq, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @hrtimers_prepare_cpu.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %seq, align 4
  %lock8 = getelementptr %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 13, i32 %i.032, i32 3, i32 1
  %5 = ptrtoint ptr %lock8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %lock8, align 4
  %active = getelementptr %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 13, i32 %i.032, i32 5
  %6 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %active, align 4
  %.compoundliteral.sroa.2.0.rb_root.sroa_idx.i = getelementptr inbounds i8, ptr %active, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.2.0.rb_root.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %.compoundliteral.sroa.2.0.rb_root.sroa_idx.i, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %cpu11 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %cpu11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cpu, ptr %cpu11, align 4
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %active_bases to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %active_bases, align 16
  %hres_active = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %hres_active, align 8
  %bf.clear13 = and i8 %bf.load, 95
  store i8 %bf.clear13, ptr %hres_active, align 8
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 10
  %11 = ptrtoint ptr %next_timer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %next_timer, align 16
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 12
  %12 = ptrtoint ptr %softirq_next_timer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %softirq_next_timer, align 32
  %expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 9
  %13 = ptrtoint ptr %expires_next to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 9223372036854775807, ptr %expires_next, align 8
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 11
  %14 = ptrtoint ptr %softirq_expires_next to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 9223372036854775807, ptr %softirq_expires_next, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hrtimers_dead_cpu(i32 noundef %scpu) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %scpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %scpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %scpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %scpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.end7, label %do.body2, !prof !140

do.body2:                                         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2222, 0\0A.popsection", ""() #12, !srcloc !166
  unreachable

do.end7:                                          ; preds = %cpu_online.exit
  tail call void @tick_cancel_sched_timer(i32 noundef %scpu) #12
  tail call fastcc void @local_bh_disable()
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !167
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !168
  br i1 %tobool10.not, label %if.then12, label %do.end7.if.end13_crit_edge

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end7.if.end13_crit_edge
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %scpu
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @hrtimer_bases to i32)
  %8 = inttoptr i32 %add to ptr
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx28 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %14, ptrtoint (ptr @hrtimer_bases to i32)
  %15 = inttoptr i32 %add29 to ptr
  tail call void @_raw_spin_lock(ptr noundef %15) #12
  tail call void @_raw_spin_lock_nested(ptr noundef %8, i32 noundef 1) #12
  br label %for.body

for.body:                                         ; preds = %migrate_hrtimer_list.exit.for.body_crit_edge, %if.end13
  %i.051 = phi i32 [ 0, %if.end13 ], [ %inc, %migrate_hrtimer_list.exit.for.body_crit_edge ]
  %arrayidx31 = getelementptr %struct.hrtimer_cpu_base, ptr %8, i32 0, i32 13, i32 %i.051
  %arrayidx33 = getelementptr %struct.hrtimer_cpu_base, ptr %15, i32 0, i32 13, i32 %i.051
  %active.i = getelementptr %struct.hrtimer_cpu_base, ptr %8, i32 0, i32 13, i32 %i.051, i32 5
  %rb_leftmost.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %8, i32 0, i32 13, i32 %i.051, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not24.i = icmp eq ptr %17, null
  br i1 %tobool.not24.i, label %for.body.migrate_hrtimer_list.exit_crit_edge, label %while.body.lr.ph.i

for.body.migrate_hrtimer_list.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %migrate_hrtimer_list.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %index.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %8, i32 0, i32 13, i32 %i.051, i32 1
  %index.i18.i = getelementptr %struct.hrtimer_cpu_base, ptr %15, i32 0, i32 13, i32 %i.051, i32 1
  %active.i21.i = getelementptr %struct.hrtimer_cpu_base, ptr %15, i32 0, i32 13, i32 %i.051, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %__remove_hrtimer.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %18 = phi ptr [ %17, %while.body.lr.ph.i ], [ %41, %__remove_hrtimer.exit.i.while.body.i_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.hrtimer, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %running.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %running.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %running.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %22, %18
  br i1 %cmp.i.not.i, label %do.body5.i, label %do.end10.i, !prof !150

do.body5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/hrtimer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2195, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end10.i:                                       ; preds = %while.body.i
  tail call void @debug_object_deactivate(ptr noundef nonnull %18, ptr noundef nonnull @hrtimer_debug_descr) #12
  tail call fastcc void @trace_hrtimer_cancel(ptr noundef nonnull %18) #12
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx31, align 8
  %state2.i.i = getelementptr inbounds %struct.hrtimer, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %state2.i.i, align 8
  store volatile i8 1, ptr %state2.i.i, align 8
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %do.end10.i.__remove_hrtimer.exit.i_crit_edge, label %if.end.i.i

do.end10.i.__remove_hrtimer.exit.i_crit_edge:     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remove_hrtimer.exit.i

if.end.i.i:                                       ; preds = %do.end10.i
  %call.i.i = tail call zeroext i1 @timerqueue_del(ptr noundef %active.i, ptr noundef nonnull %18) #12
  br i1 %call.i.i, label %if.end.i.i.__remove_hrtimer.exit.i_crit_edge, label %if.then10.i.i

if.end.i.i.__remove_hrtimer.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remove_hrtimer.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl nuw i32 1, %29
  %neg.i.i = xor i32 %shl.i.i, -1
  %active_bases.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %24, i32 0, i32 2
  %30 = ptrtoint ptr %active_bases.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active_bases.i.i, align 16
  %and11.i.i = and i32 %31, %neg.i.i
  store i32 %and11.i.i, ptr %active_bases.i.i, align 16
  br label %__remove_hrtimer.exit.i

__remove_hrtimer.exit.i:                          ; preds = %if.then10.i.i, %if.end.i.i.__remove_hrtimer.exit.i_crit_edge, %do.end10.i.__remove_hrtimer.exit.i_crit_edge
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx33, ptr %base.i.i, align 4
  %call.i.i.i.i = tail call i32 @debug_object_activate(ptr noundef nonnull %18, ptr noundef nonnull @hrtimer_debug_descr) #12
  tail call fastcc void @trace_hrtimer_start(ptr noundef nonnull %18, i32 noundef 0) #12
  %33 = ptrtoint ptr %index.i18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i18.i, align 4
  %shl.i19.i = shl nuw i32 1, %34
  %35 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx33, align 8
  %active_bases.i20.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %active_bases.i20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %active_bases.i20.i, align 16
  %or.i.i = or i32 %38, %shl.i19.i
  store i32 %or.i.i, ptr %active_bases.i20.i, align 16
  %39 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store volatile i8 1, ptr %state2.i.i, align 8
  %call.i22.i = tail call zeroext i1 @timerqueue_add(ptr noundef %active.i21.i, ptr noundef nonnull %18) #12
  %40 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %__remove_hrtimer.exit.i.migrate_hrtimer_list.exit_crit_edge, label %__remove_hrtimer.exit.i.while.body.i_crit_edge

__remove_hrtimer.exit.i.while.body.i_crit_edge:   ; preds = %__remove_hrtimer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

__remove_hrtimer.exit.i.migrate_hrtimer_list.exit_crit_edge: ; preds = %__remove_hrtimer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %migrate_hrtimer_list.exit

migrate_hrtimer_list.exit:                        ; preds = %__remove_hrtimer.exit.i.migrate_hrtimer_list.exit_crit_edge, %for.body.migrate_hrtimer_list.exit_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %migrate_hrtimer_list.exit.for.body_crit_edge

migrate_hrtimer_list.exit.for.body_crit_edge:     ; preds = %migrate_hrtimer_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %migrate_hrtimer_list.exit
  tail call fastcc void @hrtimer_update_softirq_timer(ptr noundef %15, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock(ptr noundef %8) #12
  tail call void @_raw_spin_unlock(ptr noundef %15) #12
  %42 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i49 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i49 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %47, ptrtoint (ptr @hrtimer_bases to i32)
  %48 = inttoptr i32 %add.i.i to ptr
  %hres_active.i.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %hres_active.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i.i = load i8, ptr %hres_active.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i50 = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i50, label %for.end.__hrtimer_peek_ahead_timers.exit_crit_edge, label %do.body.i

for.end.__hrtimer_peek_ahead_timers.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_peek_ahead_timers.exit

do.body.i:                                        ; preds = %for.end
  %add.i = add i32 %47, ptrtoint (ptr @tick_cpu_device to i32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool3.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool3.not.i, label %do.body.i.__hrtimer_peek_ahead_timers.exit_crit_edge, label %land.lhs.true.i

do.body.i.__hrtimer_peek_ahead_timers.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_peek_ahead_timers.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %50 = inttoptr i32 %add.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool4.not.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.__hrtimer_peek_ahead_timers.exit_crit_edge, label %if.then5.i

land.lhs.true.i.__hrtimer_peek_ahead_timers.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_peek_ahead_timers.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hrtimer_interrupt(ptr noundef nonnull %52) #12
  br label %__hrtimer_peek_ahead_timers.exit

__hrtimer_peek_ahead_timers.exit:                 ; preds = %if.then5.i, %land.lhs.true.i.__hrtimer_peek_ahead_timers.exit_crit_edge, %do.body.i.__hrtimer_peek_ahead_timers.exit_crit_edge, %for.end.__hrtimer_peek_ahead_timers.exit_crit_edge
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !170
  tail call fastcc void @local_bh_enable()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_cancel_sched_timer(i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hrtimer_update_softirq_timer(ptr noundef %cpu_base, i1 noundef zeroext %reprogram) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %softirq_activated.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 4
  %0 = ptrtoint ptr %softirq_activated.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %softirq_activated.i, align 8
  %1 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.not = icmp eq i8 %1, 0
  br i1 %tobool.not.i.not, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %active_bases.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 2
  %2 = ptrtoint ptr %active_bases.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_bases.i, align 16
  %and2.i = and i32 %3, 240
  %softirq_next_timer.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 12
  %4 = ptrtoint ptr %softirq_next_timer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %softirq_next_timer.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i43.i.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i43.i.i, label %if.then.i.__hrtimer_get_next_event.exit_crit_edge, label %__next_base.exit.lr.ph.i.i

if.then.i.__hrtimer_get_next_event.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit

__next_base.exit.lr.ph.i.i:                       ; preds = %if.then.i
  %next_timer.i.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 10
  br label %__next_base.exit.i.i

__next_base.exit.i.i:                             ; preds = %cleanup.i.i.__next_base.exit.i.i_crit_edge, %__next_base.exit.lr.ph.i.i
  %expires_next.addr.045.i.i = phi i64 [ 9223372036854775807, %__next_base.exit.lr.ph.i.i ], [ %expires_next.addr.2.i.i, %cleanup.i.i.__next_base.exit.i.i_crit_edge ]
  %active.addr.044.i.i = phi i32 [ %and2.i, %__next_base.exit.lr.ph.i.i ], [ %and.i.i.i, %cleanup.i.i.__next_base.exit.i.i_crit_edge ]
  %5 = tail call i32 @llvm.cttz.i32(i32 %active.addr.044.i.i, i1 true) #12, !range !143
  %shl.i.i.i = shl nuw i32 1, %5
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i.i = and i32 %active.addr.044.i.i, %neg.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge, label %while.body.i.i

__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge: ; preds = %__next_base.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit

while.body.i.i:                                   ; preds = %__next_base.exit.i.i
  %rb_leftmost.i.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %cmp.i.i = icmp eq ptr %7, null
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.i.if.end9.i.i_crit_edge

while.body.i.i.if.end9.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %call3.i.i = tail call ptr @timerqueue_iterate_next(ptr noundef null) #12
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.then.i.i.cleanup.i.i_crit_edge, label %if.then.i.i.if.end9.i.i_crit_edge

if.then.i.i.if.end9.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end9.i.i:                                      ; preds = %if.then.i.i.if.end9.i.i_crit_edge, %while.body.i.i.if.end9.i.i_crit_edge
  %timer.0.i.i = phi ptr [ %7, %while.body.i.i.if.end9.i.i_crit_edge ], [ %call3.i.i, %if.then.i.i.if.end9.i.i_crit_edge ]
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer.0.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %expires.i.i.i, align 8
  %offset.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %cpu_base, i32 0, i32 13, i32 %5, i32 7
  %10 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset.i.i, align 8
  %sub.i.i = sub i64 %9, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %expires_next.addr.045.i.i)
  %cmp11.i.not.i = icmp slt i64 %sub.i.i, %expires_next.addr.045.i.i
  %12 = tail call i64 @llvm.smin.i64(i64 %sub.i.i, i64 %expires_next.addr.045.i.i) #12
  br i1 %cmp11.i.not.i, label %if.end15.i.i, label %if.end9.i.i.cleanup.i.i_crit_edge

if.end9.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end15.i.i:                                     ; preds = %if.end9.i.i
  %is_soft.i.i = getelementptr inbounds %struct.hrtimer, ptr %timer.0.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %is_soft.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_soft.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool16.not.i.i, label %if.else.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %softirq_next_timer.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %timer.0.i.i, ptr %softirq_next_timer.i, align 32
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %next_timer.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %timer.0.i.i, ptr %next_timer.i.i, align 16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i.i, %if.then17.i.i, %if.end9.i.i.cleanup.i.i_crit_edge, %if.then.i.i.cleanup.i.i_crit_edge
  %expires_next.addr.2.i.i = phi i64 [ %expires_next.addr.045.i.i, %if.then.i.i.cleanup.i.i_crit_edge ], [ %sub.i.i, %if.then17.i.i ], [ %sub.i.i, %if.else.i.i ], [ %12, %if.end9.i.i.cleanup.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge, label %cleanup.i.i.__next_base.exit.i.i_crit_edge

cleanup.i.i.__next_base.exit.i.i_crit_edge:       ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__next_base.exit.i.i

cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hrtimer_get_next_event.exit

__hrtimer_get_next_event.exit:                    ; preds = %cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge, %__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge, %if.then.i.__hrtimer_get_next_event.exit_crit_edge
  %expires_next.addr.0.lcssa.i.i = phi i64 [ 9223372036854775807, %if.then.i.__hrtimer_get_next_event.exit_crit_edge ], [ %expires_next.addr.2.i.i, %cleanup.i.i.__hrtimer_get_next_event.exit_crit_edge ], [ %expires_next.addr.045.i.i, %__next_base.exit.i.i.__hrtimer_get_next_event.exit_crit_edge ]
  %17 = tail call i64 @llvm.smax.i64(i64 %expires_next.addr.0.lcssa.i.i, i64 0) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %17)
  %cmp = icmp eq i64 %17, 9223372036854775807
  br i1 %cmp, label %__hrtimer_get_next_event.exit.cleanup_crit_edge, label %if.end

__hrtimer_get_next_event.exit.cleanup_crit_edge:  ; preds = %__hrtimer_get_next_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %__hrtimer_get_next_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %softirq_next_timer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %softirq_next_timer.i, align 32
  tail call fastcc void @hrtimer_reprogram(ptr noundef %19, i1 noundef zeroext %reprogram)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__hrtimer_get_next_event.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @hrtimers_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call1 = tail call i32 @hrtimers_prepare_cpu(i32 noundef %3)
  tail call void @open_softirq(i32 noundef 8, ptr noundef nonnull @hrtimer_run_softirq) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hrtimer_run_softirq(ptr nocapture noundef readnone %h) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %add = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 1, i32 7
  %offset3.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 2, i32 7
  %offset6.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 3, i32 7
  %clock_was_set_seq.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 3
  %call.i = tail call i64 @ktime_get_update_offsets_now(ptr noundef %clock_was_set_seq.i, ptr noundef %offset.i, ptr noundef %offset3.i, ptr noundef %offset6.i) #12
  %7 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset.i, align 8
  %offset9.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 5, i32 7
  %9 = ptrtoint ptr %offset9.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %offset9.i, align 8
  %10 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset3.i, align 8
  %offset12.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 6, i32 7
  %12 = ptrtoint ptr %offset12.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %offset12.i, align 8
  %13 = ptrtoint ptr %offset6.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset6.i, align 8
  %offset15.i = getelementptr %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 13, i32 7, i32 7
  %15 = ptrtoint ptr %offset15.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %offset15.i, align 8
  tail call fastcc void @__hrtimer_run_queues(ptr noundef %6, i64 noundef %call.i, i32 noundef %call4, i32 noundef 240)
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %softirq_activated to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %softirq_activated, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %softirq_activated, align 8
  tail call fastcc void @hrtimer_update_softirq_timer(ptr noundef %6, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_hrtimeout_range_clock(ptr noundef readonly %expires, i64 noundef %delta, i32 noundef %mode, i32 noundef %clock_id) #5 section ".sched.text" align 64 {
entry:
  %t = alloca %struct.hrtimer_sleeper, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %t) #12
  %0 = call ptr @memset(ptr %t, i32 255, i32 56)
  %tobool.not = icmp eq ptr %expires, null
  br i1 %tobool.not, label %if.then55.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %expires, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %__here, label %if.end56

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@schedule_hrtimeout_range_clock, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %8, align 128
  br label %cleanup

if.then55.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @schedule() #12
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true
  call void @debug_object_init_on_stack(ptr noundef nonnull %t, ptr noundef nonnull @hrtimer_debug_descr) #12
  %10 = call ptr @memset(ptr %t, i32 0, i32 48)
  %11 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock_id)
  %cmp.i.i.i = icmp eq i32 %clock_id, 0
  %and3.i.i.i = and i32 %mode, 1
  %clock_id.addr.0.i.i.i = select i1 %cmp.i.i.i, i32 %and3.i.i.i, i32 %clock_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %clock_id.addr.0.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %clock_id.addr.0.i.i.i, 16
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end56.do.end.i.i.i.i_crit_edge, !prof !140

if.end56.do.end.i.i.i.i_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end56
  %arrayidx.i.i.i.i = getelementptr [16 x i32], ptr @hrtimer_clock_to_base_table, i32 0, i32 %clock_id.addr.0.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %19 = and i32 %clock_id.addr.0.i.i.i, 1073741823
  %20 = lshr i32 63356, %19
  %21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.not.not.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp2.not.not.not.i.i.i.i, label %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge, label %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge

if.then.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_init_sleeper_on_stack.exit

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end56.do.end.i.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1537, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %clock_id.addr.0.i.i.i) #12
  br label %hrtimer_init_sleeper_on_stack.exit

hrtimer_init_sleeper_on_stack.exit:               ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge
  %retval.1.i.i.i.i = phi i32 [ %18, %if.then.i.i.i.i.hrtimer_init_sleeper_on_stack.exit_crit_edge ], [ 0, %do.end.i.i.i.i ]
  %and.i.i.i = and i32 %mode, 4
  %and.lobit.i.i.i = lshr exact i32 %and.i.i.i, 2
  %22 = trunc i32 %and.lobit.i.i.i to i8
  %add.i.i.i = add i32 %16, ptrtoint (ptr @hrtimer_bases to i32)
  %23 = inttoptr i32 %add.i.i.i to ptr
  %add7.i.i.i = add i32 %retval.1.i.i.i.i, %and.i.i.i
  %is_soft.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 6
  %24 = ptrtoint ptr %is_soft.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %22, ptr %is_soft.i.i.i, align 2
  %25 = trunc i32 %mode to i8
  %26 = lshr i8 %25, 3
  %27 = and i8 %26, 1
  %is_hard.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 7
  %28 = ptrtoint ptr %is_hard.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %is_hard.i.i.i, align 1
  %arrayidx14.i.i.i = getelementptr %struct.hrtimer_cpu_base, ptr %23, i32 0, i32 13, i32 %add7.i.i.i
  %base15.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 3
  %29 = ptrtoint ptr %base15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx14.i.i.i, ptr %base15.i.i.i, align 4
  %30 = ptrtoint ptr %t to i32
  %31 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %t, align 8
  %function.i.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 2
  %32 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hrtimer_wakeup, ptr %function.i.i, align 8
  %33 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i5.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i5.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i, align 8
  %task2.i.i = getelementptr inbounds %struct.hrtimer_sleeper, ptr %t, i32 0, i32 1
  %37 = ptrtoint ptr %task2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %task2.i.i, align 8
  %38 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %expires, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %t, i32 0, i32 1
  %40 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %_softexpires.i, align 8
  %add.i.i = add i64 %39, %delta
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i)
  %cmp.i.i = icmp slt i64 %add.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %39)
  %cmp1.i.i = icmp slt i64 %add.i.i, %39
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %delta)
  %cmp3.i.i = icmp slt i64 %add.i.i, %delta
  %or.cond9.i.i = or i1 %cmp3.i.i, %or.cond.i.i
  %spec.select.i.i = select i1 %or.cond9.i.i, i64 9223372036854775807, i64 %add.i.i
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %t, i32 0, i32 1
  %41 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %spec.select.i.i, ptr %expires.i, align 8
  %sub.i.i = sub i64 %spec.select.i.i, %39
  call void @hrtimer_start_range_ns(ptr noundef nonnull %t, i64 noundef %39, i64 noundef %sub.i.i, i32 noundef %mode) #12
  %42 = ptrtoint ptr %task2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task2.i.i, align 8
  %tobool58.not = icmp eq ptr %43, null
  br i1 %tobool58.not, label %hrtimer_init_sleeper_on_stack.exit.if.end66_crit_edge, label %if.then65, !prof !150

hrtimer_init_sleeper_on_stack.exit.if.end66_crit_edge: ; preds = %hrtimer_init_sleeper_on_stack.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then65:                                        ; preds = %hrtimer_init_sleeper_on_stack.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @schedule() #12
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %hrtimer_init_sleeper_on_stack.exit.if.end66_crit_edge
  %call5.i = call i32 @hrtimer_try_to_cancel(ptr noundef nonnull %t) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end66.if.then.i_crit_edge, label %if.end66.hrtimer_cancel.exit_crit_edge

if.end66.hrtimer_cancel.exit_crit_edge:           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

if.end66.if.then.i_crit_edge:                     ; preds = %if.end66
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.end66.if.then.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !159
  %call.i = call i32 @hrtimer_try_to_cancel(ptr noundef nonnull %t) #12
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.if.then.i_crit_edge, label %if.then.i.hrtimer_cancel.exit_crit_edge

if.then.i.hrtimer_cancel.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

hrtimer_cancel.exit:                              ; preds = %if.then.i.hrtimer_cancel.exit_crit_edge, %if.end66.hrtimer_cancel.exit_crit_edge
  call void @debug_object_free(ptr noundef nonnull %t, ptr noundef nonnull @hrtimer_debug_descr) #12
  br label %__here120

__here120:                                        ; preds = %hrtimer_cancel.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i153 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i153 to ptr
  %task123 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task123 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task123, align 8
  %task_state_change124 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 212
  %48 = ptrtoint ptr %task_state_change124 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 ptrtoint (ptr blockaddress(@schedule_hrtimeout_range_clock, %__here120) to i32), ptr %task_state_change124, align 4
  %49 = load ptr, ptr %task123, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %49, align 128
  %51 = ptrtoint ptr %task2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task2.i.i, align 8
  %tobool142.not = icmp eq ptr %52, null
  %cond = select i1 %tobool142.not, i32 0, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %__here120, %if.then55.critedge, %__here
  %retval.0 = phi i32 [ 0, %__here ], [ %cond, %__here120 ], [ -4, %if.then55.critedge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_hrtimeout_range(ptr noundef %expires, i64 noundef %delta, i32 noundef %mode) #5 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @schedule_hrtimeout_range_clock(ptr noundef %expires, i64 noundef %delta, i32 noundef %mode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_hrtimeout(ptr noundef %expires, i32 noundef %mode) #5 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @schedule_hrtimeout_range_clock(ptr noundef %expires, i64 noundef 0, i32 noundef %mode, i32 noundef 1) #12
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @hrtimer_debug_hint(ptr nocapture noundef readonly %addr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %function = getelementptr inbounds %struct.hrtimer, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hrtimer_fixup_init(ptr noundef %addr, i32 noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call5.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %sw.bb.if.then.i_crit_edge, label %sw.bb.hrtimer_cancel.exit_crit_edge

sw.bb.hrtimer_cancel.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !159
  %call.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %addr) #12
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.if.then.i_crit_edge, label %if.then.i.hrtimer_cancel.exit_crit_edge

if.then.i.hrtimer_cancel.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

hrtimer_cancel.exit:                              ; preds = %if.then.i.hrtimer_cancel.exit_crit_edge, %sw.bb.hrtimer_cancel.exit_crit_edge
  tail call void @debug_object_init(ptr noundef %addr, ptr noundef nonnull @hrtimer_debug_descr) #12
  br label %cleanup

cleanup:                                          ; preds = %hrtimer_cancel.exit, %entry.cleanup_crit_edge
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hrtimer_fixup_activate(ptr nocapture noundef readnone %addr, i32 noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %do.end, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 379, i32 noundef 9, ptr noundef null) #12
  br label %sw.default

sw.default:                                       ; preds = %do.end, %entry.sw.default_crit_edge
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hrtimer_fixup_free(ptr noundef %addr, i32 noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call5.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %sw.bb.if.then.i_crit_edge, label %sw.bb.hrtimer_cancel.exit_crit_edge

sw.bb.hrtimer_cancel.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !159
  %call.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %addr) #12
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.if.then.i_crit_edge, label %if.then.i.hrtimer_cancel.exit_crit_edge

if.then.i.hrtimer_cancel.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hrtimer_cancel.exit

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

hrtimer_cancel.exit:                              ; preds = %if.then.i.hrtimer_cancel.exit_crit_edge, %sw.bb.hrtimer_cancel.exit_crit_edge
  tail call void @debug_object_free(ptr noundef %addr, ptr noundef nonnull @hrtimer_debug_descr) #12
  br label %cleanup

cleanup:                                          ; preds = %hrtimer_cancel.exit, %entry.cleanup_crit_edge
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clock_was_set_work(ptr nocapture noundef readnone %work) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clock_was_set(i32 noundef 170)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @switch_hrtimer_base(ptr noundef %timer, ptr noundef %base, i32 noundef %pinned) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %index = getelementptr inbounds %struct.hrtimer_clock_base, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @hrtimer_bases to i32)
  %8 = inttoptr i32 %add to ptr
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @timers_migration_enabled, i32 1), ptr blockaddress(@switch_hrtimer_base, %get_target_base.exit)) #12
          to label %arch_static_branch_jump.exit.i [label %get_target_base.exit], !srcloc !171

arch_static_branch_jump.exit.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pinned)
  %tobool4.not.i = icmp eq i32 %pinned, 0
  br i1 %tobool4.not.i, label %do.body.i, label %arch_static_branch_jump.exit.i.get_target_base.exit_crit_edge

arch_static_branch_jump.exit.i.get_target_base.exit_crit_edge: ; preds = %arch_static_branch_jump.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_target_base.exit

do.body.i:                                        ; preds = %arch_static_branch_jump.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call i32 @get_nohz_timer_target() #12
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @hrtimer_bases to i32)
  %11 = inttoptr i32 %add.i to ptr
  br label %get_target_base.exit

get_target_base.exit:                             ; preds = %do.body.i, %arch_static_branch_jump.exit.i.get_target_base.exit_crit_edge, %entry
  %retval.0.i = phi ptr [ %11, %do.body.i ], [ %8, %arch_static_branch_jump.exit.i.get_target_base.exit_crit_edge ], [ %8, %entry ]
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  br label %again

again:                                            ; preds = %again.backedge, %get_target_base.exit
  %new_cpu_base.0 = phi ptr [ %retval.0.i, %get_target_base.exit ], [ %8, %again.backedge ]
  %arrayidx3 = getelementptr %struct.hrtimer_cpu_base, ptr %new_cpu_base.0, i32 0, i32 13, i32 %1
  %cmp.not = icmp eq ptr %arrayidx3, %base
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %again
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %running.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %running.i, align 8
  %cmp.i.not = icmp eq ptr %15, %timer
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %do.body12, !prof !150

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body12:                                        ; preds = %if.then
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr getelementptr inbounds (%struct.hrtimer_cpu_base, ptr @migration_cpu_base, i32 0, i32 13), ptr %base.i, align 4
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  tail call void @_raw_spin_unlock(ptr noundef %18) #12
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3, align 8
  tail call void @_raw_spin_lock(ptr noundef %20) #12
  %cmp20.not = icmp eq ptr %new_cpu_base.0, %8
  br i1 %cmp20.not, label %do.body12.do.body43_crit_edge, label %land.lhs.true

do.body12.do.body43_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

land.lhs.true:                                    ; preds = %do.body12
  %21 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %expires.i.i, align 8
  %offset.i = getelementptr %struct.hrtimer_cpu_base, ptr %new_cpu_base.0, i32 0, i32 13, i32 %1, i32 7
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %offset.i, align 8
  %sub.i = sub i64 %22, %24
  %25 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx3, align 8
  %expires_next.i = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %expires_next.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %expires_next.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %28)
  %cmp.i81.not = icmp slt i64 %sub.i, %28
  br i1 %cmp.i81.not, label %if.then23, label %land.lhs.true.do.body43_crit_edge

land.lhs.true.do.body43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %26) #12
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 8
  tail call void @_raw_spin_lock(ptr noundef %30) #12
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %base, ptr %base.i, align 4
  br label %again.backedge

again.backedge:                                   ; preds = %land.lhs.true50.again.backedge_crit_edge, %if.then23
  br label %again

do.body43:                                        ; preds = %land.lhs.true.do.body43_crit_edge, %do.body12.do.body43_crit_edge
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx3, ptr %base.i, align 4
  br label %cleanup

if.else:                                          ; preds = %again
  %cmp49.not = icmp eq ptr %new_cpu_base.0, %8
  br i1 %cmp49.not, label %if.else.cleanup_crit_edge, label %land.lhs.true50

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true50:                                  ; preds = %if.else
  %33 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %expires.i.i, align 8
  %offset.i84 = getelementptr %struct.hrtimer_cpu_base, ptr %new_cpu_base.0, i32 0, i32 13, i32 %1, i32 7
  %35 = ptrtoint ptr %offset.i84 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %offset.i84, align 8
  %sub.i85 = sub i64 %34, %36
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %expires_next.i86 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %expires_next.i86 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %expires_next.i86, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i85, i64 %40)
  %cmp.i87.not = icmp slt i64 %sub.i85, %40
  br i1 %cmp.i87.not, label %land.lhs.true50.again.backedge_crit_edge, label %land.lhs.true50.cleanup_crit_edge

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true50.again.backedge_crit_edge:         ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %again.backedge

cleanup:                                          ; preds = %land.lhs.true50.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.body43, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx3, %do.body43 ], [ %base, %if.then.cleanup_crit_edge ], [ %base, %if.else.cleanup_crit_edge ], [ %base, %land.lhs.true50.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_nohz_timer_target() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hrtimer_start(ptr noundef %hrtimer, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_start, i32 0, i32 1), ptr blockaddress(@trace_hrtimer_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %call42 = tail call i32 @__traceiter_hrtimer_start(ptr noundef null, ptr noundef %hrtimer, i32 noundef %mode) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hrtimer_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_hrtimer_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 222, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
declare dso_local i32 @debug_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hrtimer_cancel(ptr noundef %hrtimer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 1), ptr blockaddress(@trace_hrtimer_cancel, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !177
  %call42 = tail call i32 @__traceiter_hrtimer_cancel(ptr noundef null, ptr noundef %hrtimer) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !178
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hrtimer_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_hrtimer_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 295, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
declare dso_local void @debug_object_deactivate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_cancel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @timerqueue_iterate_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hrtimer_init(ptr noundef %hrtimer, i32 noundef %clockid, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_init, i32 0, i32 1), ptr blockaddress(@trace_hrtimer_init, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  %call42 = tail call i32 @__traceiter_hrtimer_init(ptr noundef null, ptr noundef %hrtimer, i32 noundef %clockid, i32 noundef %mode) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_init, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_init, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hrtimer_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_hrtimer_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 189, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
declare dso_local i32 @__traceiter_hrtimer_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_update_offsets_now(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hrtimer_expire_entry(ptr noundef %hrtimer, ptr noundef %now) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_entry, i32 0, i32 1), ptr blockaddress(@trace_hrtimer_expire_entry, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !181
  %call42 = tail call i32 @__traceiter_hrtimer_expire_entry(ptr noundef null, ptr noundef %hrtimer, ptr noundef %now) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !182
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_entry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_entry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hrtimer_expire_entry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_hrtimer_expire_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 253, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
define internal fastcc void @trace_hrtimer_expire_exit(ptr noundef %hrtimer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_exit, i32 0, i32 1), ptr blockaddress(@trace_hrtimer_expire_exit, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !172

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  %call42 = tail call i32 @__traceiter_hrtimer_expire_exit(ptr noundef null, ptr noundef %hrtimer) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !184
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hrtimer_expire_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_hrtimer_expire_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 284, ptr noundef nonnull @.str.14) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #12
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
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_expire_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hrtimer_expire_exit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_init_highres() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_setup_sched_timer() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hrtimer_wakeup(ptr nocapture noundef %timer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 8
  store ptr null, ptr %task1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @wake_up_process(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

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

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !64, !66, !68, !70, !71, !72, !74, !76, !77, !79, !81, !82, !84, !85, !87, !89, !91, !92, !93, !94, !96, !98, !99, !101, !103, !105, !106, !108, !110, !111, !113, !114, !116, !117, !118, !119, !121, !123, !125, !126, !127, !128, !129}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/time/hrtimer.c", i32 70, i32 10}
!2 = !{ptr @hrtimer_bases, !3, !"hrtimer_bases", i1 false, i1 false}
!3 = !{!"../kernel/time/hrtimer.c", i32 68, i32 1}
!4 = !{ptr @__ksymtab___ktime_divns, !5, !"__ksymtab___ktime_divns", i1 false, i1 false}
!5 = !{!"../kernel/time/hrtimer.c", i32 321, i32 1}
!6 = !{ptr @__ksymtab_ktime_add_safe, !7, !"__ksymtab_ktime_add_safe", i1 false, i1 false}
!7 = !{!"../kernel/time/hrtimer.c", i32 341, i32 1}
!8 = !{ptr @__ksymtab_hrtimer_init_on_stack, !9, !"__ksymtab_hrtimer_init_on_stack", i1 false, i1 false}
!9 = !{!"../kernel/time/hrtimer.c", i32 437, i32 1}
!10 = !{ptr @__ksymtab_hrtimer_init_sleeper_on_stack, !11, !"__ksymtab_hrtimer_init_sleeper_on_stack", i1 false, i1 false}
!11 = !{!"../kernel/time/hrtimer.c", i32 448, i32 1}
!12 = !{ptr @__ksymtab_destroy_hrtimer_on_stack, !13, !"__ksymtab_destroy_hrtimer_on_stack", i1 false, i1 false}
!13 = !{!"../kernel/time/hrtimer.c", i32 454, i32 1}
!14 = !{ptr @hrtimer_resolution, !15, !"hrtimer_resolution", i1 false, i1 false}
!15 = !{!"../kernel/time/hrtimer.c", i32 709, i32 14}
!16 = !{ptr @__ksymtab_hrtimer_resolution, !17, !"__ksymtab_hrtimer_resolution", i1 false, i1 false}
!17 = !{!"../kernel/time/hrtimer.c", i32 710, i32 1}
!18 = !{ptr @__setup_setup_hrtimer_hres, !19, !"__setup_setup_hrtimer_hres", i1 false, i1 false}
!19 = !{!"../kernel/time/hrtimer.c", i32 720, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../kernel/time/hrtimer.c", i32 1006, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__ksymtab_hrtimer_forward, !24, !"__ksymtab_hrtimer_forward", i1 false, i1 false}
!24 = !{!"../kernel/time/hrtimer.c", i32 1070, i32 1}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../kernel/time/hrtimer.c", i32 1292, i32 3}
!27 = !{ptr @__ksymtab_hrtimer_start_range_ns, !28, !"__ksymtab_hrtimer_start_range_ns", i1 false, i1 false}
!28 = !{!"../kernel/time/hrtimer.c", i32 1303, i32 1}
!29 = !{ptr @__ksymtab_hrtimer_try_to_cancel, !30, !"__ksymtab_hrtimer_try_to_cancel", i1 false, i1 false}
!30 = !{!"../kernel/time/hrtimer.c", i32 1341, i32 1}
!31 = !{ptr @__ksymtab_hrtimer_cancel, !32, !"__ksymtab_hrtimer_cancel", i1 false, i1 false}
!32 = !{!"../kernel/time/hrtimer.c", i32 1450, i32 1}
!33 = !{ptr @__ksymtab___hrtimer_get_remaining, !34, !"__ksymtab___hrtimer_get_remaining", i1 false, i1 false}
!34 = !{!"../kernel/time/hrtimer.c", i32 1471, i32 1}
!35 = !{ptr @__ksymtab_hrtimer_init, !36, !"__ksymtab_hrtimer_init", i1 false, i1 false}
!36 = !{!"../kernel/time/hrtimer.c", i32 1595, i32 1}
!37 = !{ptr @__ksymtab_hrtimer_active, !38, !"__ksymtab_hrtimer_active", i1 false, i1 false}
!38 = !{!"../kernel/time/hrtimer.c", i32 1622, i32 1}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../kernel/time/hrtimer.c", i32 1869, i32 2}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hrtimer_interrupt._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @hrtimer_interrupt._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_hrtimer_sleeper_start_expires, !46, !"__ksymtab_hrtimer_sleeper_start_expires", i1 false, i1 false}
!46 = !{!"../kernel/time/hrtimer.c", i32 1967, i32 1}
!47 = !{ptr @__ksymtab_hrtimer_init_sleeper, !48, !"__ksymtab_hrtimer_init_sleeper", i1 false, i1 false}
!48 = !{!"../kernel/time/hrtimer.c", i32 2014, i32 1}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/time/hrtimer.c", i32 2139, i32 1}
!51 = !{ptr @event_enter__nanosleep_time32, !50, !"event_enter__nanosleep_time32", i1 false, i1 false}
!52 = !{ptr @__event_enter__nanosleep_time32, !50, !"__event_enter__nanosleep_time32", i1 false, i1 false}
!53 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @event_exit__nanosleep_time32, !50, !"event_exit__nanosleep_time32", i1 false, i1 false}
!55 = !{ptr @__event_exit__nanosleep_time32, !50, !"__event_exit__nanosleep_time32", i1 false, i1 false}
!56 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__syscall_meta__nanosleep_time32, !50, !"__syscall_meta__nanosleep_time32", i1 false, i1 false}
!58 = !{ptr @__p_syscall_meta__nanosleep_time32, !50, !"__p_syscall_meta__nanosleep_time32", i1 false, i1 false}
!59 = !{ptr @hrtimers_prepare_cpu.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../kernel/time/hrtimer.c", i32 2169, i32 3}
!61 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../kernel/time/hrtimer.c", i32 2288, i32 3}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../kernel/time/hrtimer.c", i32 2310, i32 2}
!66 = !{ptr @__ksymtab_schedule_hrtimeout_range, !67, !"__ksymtab_schedule_hrtimeout_range", i1 false, i1 false}
!67 = !{!"../kernel/time/hrtimer.c", i32 2353, i32 1}
!68 = !{ptr @__ksymtab_schedule_hrtimeout, !69, !"__ksymtab_schedule_hrtimeout", i1 false, i1 false}
!69 = !{!"../kernel/time/hrtimer.c", i32 2386, i32 1}
!70 = !{ptr @__pcpu_scope_hrtimer_bases, !3, !"__pcpu_scope_hrtimer_bases", i1 false, i1 false}
!71 = !{ptr @__pcpu_unique_hrtimer_bases, !3, !"__pcpu_unique_hrtimer_bases", i1 false, i1 false}
!72 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/time/hrtimer.c", i32 405, i32 11}
!74 = !{ptr @hrtimer_debug_descr, !75, !"hrtimer_debug_descr", i1 false, i1 false}
!75 = !{!"../kernel/time/hrtimer.c", i32 404, i32 37}
!76 = !{ptr @__setup_str_setup_hrtimer_hres, !19, !"__setup_str_setup_hrtimer_hres", i1 false, i1 false}
!77 = !{ptr @hrtimer_hres_enabled, !78, !"hrtimer_hres_enabled", i1 false, i1 false}
!78 = !{!"../kernel/time/hrtimer.c", i32 708, i32 13}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!81 = !{ptr @.str.10, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.11, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/time/hrtimer.c", i32 988, i32 8}
!84 = !{ptr @hrtimer_work, !83, !"hrtimer_work", i1 false, i1 false}
!85 = !{ptr @.str.12, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/time/hrtimer.c", i32 140, i32 15}
!87 = !{ptr @migration_cpu_base, !88, !"migration_cpu_base", i1 false, i1 false}
!88 = !{!"../kernel/time/hrtimer.c", i32 137, i32 32}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/trace/events/timer.h", i32 195, i32 1}
!91 = !{ptr @.str.13, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!93 = !{ptr @.str.14, !90, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../kernel/time/hrtimer.c", i32 814, i32 2}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/trace/events/timer.h", i32 290, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = !{ptr @.str.15, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/time/hrtimer.c", i32 1537, i32 2}
!101 = !{ptr @hrtimer_clock_to_base_table, !102, !"hrtimer_clock_to_base_table", i1 false, i1 false}
!102 = !{!"../kernel/time/hrtimer.c", i32 116, i32 18}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../include/trace/events/timer.h", i32 167, i32 1}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../kernel/time/hrtimer.c", i32 1713, i32 2}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/trace/events/timer.h", i32 232, i32 1}
!110 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../include/trace/events/timer.h", i32 279, i32 1}
!113 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!114 = !{ptr @.str.16, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/time/hrtimer.c", i32 740, i32 3}
!116 = !{ptr @.str.17, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @hrtimer_switch_to_hres._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @hrtimer_switch_to_hres._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../kernel/time/hrtimer.c", i32 2040, i32 3}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../kernel/time/hrtimer.c", i32 2051, i32 2}
!123 = !{ptr @.str.19, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!125 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @types__nanosleep_time32, !50, !"types__nanosleep_time32", i1 false, i1 false}
!127 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @args__nanosleep_time32, !50, !"args__nanosleep_time32", i1 false, i1 false}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2148380597, i64 2148380877, i64 2148381211, i64 2148381545}
!142 = !{!"auto-init"}
!143 = !{i32 0, i32 33}
!144 = !{i64 2155533517}
!145 = !{i64 2155533626}
!146 = !{i64 2155761546}
!147 = !{i64 2155766480}
!148 = !{i64 2155788162}
!149 = !{i64 2155793056}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i64 2149787771, i64 2149788257, i64 2149787808, i64 2149787864, i64 2149787898, i64 2149787922, i64 2149787963, i64 2149787984, i64 2149788012, i64 2149788046}
!152 = !{i64 2155489025}
!153 = !{i64 2155488867}
!154 = !{i64 2155832931}
!155 = !{i64 2155832773}
!156 = !{i64 2155833101}
!157 = !{i64 2150297062}
!158 = !{i64 2150326817}
!159 = !{i64 2150326659}
!160 = !{i64 2155852449, i64 2155852936, i64 2155852486, i64 2155852542, i64 2155852576, i64 2155852600, i64 2155852641, i64 2155852662, i64 2155852690, i64 2155852724}
!161 = !{i64 2150298935}
!162 = !{i8 0, i8 2}
!163 = !{i64 2155866333, i64 2155866820, i64 2155866370, i64 2155866426, i64 2155866460, i64 2155866484, i64 2155866525, i64 2155866546, i64 2155866574, i64 2155866608}
!164 = !{i64 2155872388}
!165 = !{i64 2155104888}
!166 = !{i64 2155899601, i64 2155900088, i64 2155899638, i64 2155899694, i64 2155899728, i64 2155899752, i64 2155899793, i64 2155899814, i64 2155899842, i64 2155899876}
!167 = !{i64 939007}
!168 = !{i64 936710}
!169 = !{i64 2155897999, i64 2155898486, i64 2155898036, i64 2155898092, i64 2155898126, i64 2155898150, i64 2155898191, i64 2155898212, i64 2155898240, i64 2155898274}
!170 = !{i64 936520}
!171 = !{i64 2148355813, i64 2148355818, i64 2148355839, i64 2148355883, i64 2148355917, i64 2148355938}
!172 = !{i64 2148355410, i64 2148355415, i64 2148355428, i64 2148355472, i64 2148355506, i64 2148355527}
!173 = !{i64 2155347015}
!174 = !{i64 2155347230}
!175 = !{i64 2149378090}
!176 = !{i64 2149379126}
!177 = !{i64 2155400520}
!178 = !{i64 2155400725}
!179 = !{i64 2155330532}
!180 = !{i64 2155330763}
!181 = !{i64 2155363553}
!182 = !{i64 2155363780}
!183 = !{i64 2155384223}
!184 = !{i64 2155384438}
