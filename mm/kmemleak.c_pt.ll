; ModuleID = '/llk/IR_all_yes/mm/kmemleak.c_pt.bc'
source_filename = "../mm/kmemleak.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kmemleak_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_alloc\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmemleak_alloc_percpu\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_alloc_percpu\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_alloc_percpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_alloc_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmemleak_vmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_vmalloc\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_vmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_vmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmemleak_free\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_free\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_free:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_free\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmemleak_free_part\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_free_part\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_free_part\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_free_part:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_free_part\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_free_part:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmemleak_free_percpu\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_free_percpu\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_free_percpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_free_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_update_trace\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_update_trace\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_update_trace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_update_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_update_trace\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_update_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_not_leak\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_not_leak\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_not_leak\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_not_leak:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_not_leak\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_not_leak:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_ignore\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_ignore\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_ignore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_ignore\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_scan_area\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_scan_area\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_scan_area\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_scan_area:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_scan_area\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_scan_area:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_no_scan\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_no_scan\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_no_scan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_no_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_no_scan\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_no_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_alloc_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_alloc_phys\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_alloc_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_alloc_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_alloc_phys\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_alloc_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_free_part_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_free_part_phys\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_free_part_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_free_part_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_free_part_phys\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_free_part_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_not_leak_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_not_leak_phys\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_not_leak_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_not_leak_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_not_leak_phys\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_not_leak_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemleak_ignore_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemleak_ignore_phys\09\09\09\09"
module asm "\09.long\09__crc_kmemleak_ignore_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemleak_ignore_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemleak_ignore_phys\22\09\09\09\09\09"
module asm "__kstrtabns_kmemleak_ignore_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kmemleak_object = type { %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.callback_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.hlist_head, [16 x i32], i32, i32, i32, [16 x i8] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.kmemleak_scan_area = type { %struct.hlist_node, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__param_str_verbose = internal constant [17 x i8] c"kmemleak.verbose\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@kmemleak_verbose = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @kmemleak_verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype226 = internal constant [31 x i8] c"kmemleak.parmtype=verbose:bool\00", section ".modinfo", align 1
@kmemleak_alloc.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kmemleak\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmemleak_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/kmemleak.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(0x%p, %zu, %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kmemleak: %s(0x%p, %zu, %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@kmemleak_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_kmemleak_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_alloc to i32), ptr @__kstrtab_kmemleak_alloc, ptr @__kstrtabns_kmemleak_alloc }, section "___ksymtab_gpl+kmemleak_alloc", align 4
@kmemleak_alloc_percpu.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmemleak_alloc_percpu\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(0x%p, %zu)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kmemleak: %s(0x%p, %zu)\0A\00", [39 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_kmemleak_alloc_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_alloc_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_alloc_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_alloc_percpu to i32), ptr @__kstrtab_kmemleak_alloc_percpu, ptr @__kstrtabns_kmemleak_alloc_percpu }, section "___ksymtab_gpl+kmemleak_alloc_percpu", align 4
@kmemleak_vmalloc.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.6, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmemleak_vmalloc\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_vmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_vmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_vmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_vmalloc to i32), ptr @__kstrtab_kmemleak_vmalloc, ptr @__kstrtabns_kmemleak_vmalloc }, section "___ksymtab_gpl+kmemleak_vmalloc", align 4
@kmemleak_free.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kmemleak_free\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(0x%p)\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kmemleak: %s(0x%p)\0A\00", [44 x i8] zeroinitializer }, align 32
@kmemleak_free_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_kmemleak_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_free = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_free to i32), ptr @__kstrtab_kmemleak_free, ptr @__kstrtabns_kmemleak_free }, section "___ksymtab_gpl+kmemleak_free", align 4
@kmemleak_free_part.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.10, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kmemleak_free_part\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_free_part = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_free_part = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_free_part = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_free_part to i32), ptr @__kstrtab_kmemleak_free_part, ptr @__kstrtabns_kmemleak_free_part }, section "___ksymtab_gpl+kmemleak_free_part", align 4
@kmemleak_free_percpu.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.10, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmemleak_free_percpu\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_free_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_free_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_free_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_free_percpu to i32), ptr @__kstrtab_kmemleak_free_percpu, ptr @__kstrtabns_kmemleak_free_percpu }, section "___ksymtab_gpl+kmemleak_free_percpu", align 4
@kmemleak_update_trace.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.10, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kmemleak_update_trace\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_update_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_update_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_update_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_update_trace to i32), ptr @__kstrtab_kmemleak_update_trace, ptr @__kstrtabns_kmemleak_update_trace }, section "___ksymtab+kmemleak_update_trace", align 4
@kmemleak_not_leak.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.10, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmemleak_not_leak\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_not_leak = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_not_leak = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_not_leak = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_not_leak to i32), ptr @__kstrtab_kmemleak_not_leak, ptr @__kstrtabns_kmemleak_not_leak }, section "___ksymtab+kmemleak_not_leak", align 4
@kmemleak_ignore.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.10, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kmemleak_ignore\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_ignore = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_ignore = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_ignore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_ignore to i32), ptr @__kstrtab_kmemleak_ignore, ptr @__kstrtabns_kmemleak_ignore }, section "___ksymtab+kmemleak_ignore", align 4
@kmemleak_scan_area.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.10, i8 1, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kmemleak_scan_area\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_scan_area = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_scan_area = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_scan_area = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_scan_area to i32), ptr @__kstrtab_kmemleak_scan_area, ptr @__kstrtabns_kmemleak_scan_area }, section "___ksymtab+kmemleak_scan_area", align 4
@kmemleak_no_scan.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.10, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmemleak_no_scan\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_kmemleak_no_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_no_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_no_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_no_scan to i32), ptr @__kstrtab_kmemleak_no_scan, ptr @__kstrtabns_kmemleak_no_scan }, section "___ksymtab+kmemleak_no_scan", align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_kmemleak_alloc_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_alloc_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_alloc_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_alloc_phys to i32), ptr @__kstrtab_kmemleak_alloc_phys, ptr @__kstrtabns_kmemleak_alloc_phys }, section "___ksymtab+kmemleak_alloc_phys", align 4
@__kstrtab_kmemleak_free_part_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_free_part_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_free_part_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_free_part_phys to i32), ptr @__kstrtab_kmemleak_free_part_phys, ptr @__kstrtabns_kmemleak_free_part_phys }, section "___ksymtab+kmemleak_free_part_phys", align 4
@__kstrtab_kmemleak_not_leak_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_not_leak_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_not_leak_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_not_leak_phys to i32), ptr @__kstrtab_kmemleak_not_leak_phys, ptr @__kstrtabns_kmemleak_not_leak_phys }, section "___ksymtab+kmemleak_not_leak_phys", align 4
@__kstrtab_kmemleak_ignore_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemleak_ignore_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemleak_ignore_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemleak_ignore_phys to i32), ptr @__kstrtab_kmemleak_ignore_phys, ptr @__kstrtabns_kmemleak_ignore_phys }, section "___ksymtab+kmemleak_ignore_phys", align 4
@__setup_str_kmemleak_boot_config = internal constant [9 x i8] c"kmemleak\00", section ".init.rodata", align 1
@__setup_kmemleak_boot_config = internal global %struct.obs_kernel_param { ptr @__setup_str_kmemleak_boot_config, ptr @kmemleak_boot_config, i32 1 }, section ".init.setup", align 4
@kmemleak_skip_disable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kmemleak_error = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies_min_age = internal global { i1, [31 x i8] } zeroinitializer, align 32
@jiffies_scan_wait = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kmemleak_object\00", [16 x i8] zeroinitializer }, align 32
@object_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scan_area_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@_sdata = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@__bss_start = external dso_local global [0 x i8], align 1
@__bss_stop = external dso_local global [0 x i8], align 1
@__start_ro_after_init = external dso_local global [0 x i8], align 1
@__end_ro_after_init = external dso_local global [0 x i8], align 1
@__initcall__kmod_kmemleak__268_2005_kmemleak_late_init7 = internal global ptr @kmemleak_late_init, section ".initcall7.init", align 4
@create_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014kmemleak: Cannot allocate a kmemleak_object structure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"create_object\00", [18 x i8] zeroinitializer }, align 32
@create_object._entry_ptr = internal global ptr @create_object._entry, section ".printk_index", align 4
@create_object.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&object->lock\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmemleak_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@min_addr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@max_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@object_tree_root = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@create_object._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014kmemleak: Cannot insert 0x%lx into the object search tree (overlaps existing)\0A\00", [47 x i8] zeroinitializer }, align 32
@create_object._entry_ptr.27 = internal global ptr @create_object._entry.25, section ".printk_index", align 4
@object_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @object_list, ptr @object_list }, [24 x i8] zeroinitializer }, align 32
@mem_pool_free_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mem_pool_free_list, ptr @mem_pool_free_list }, [24 x i8] zeroinitializer }, align 32
@mem_pool_free_count = internal global { i32, [28 x i8] } { i32 16000, [28 x i8] zeroinitializer }, align 32
@mem_pool = internal global { [16000 x %struct.kmemleak_object], [262144 x i8] } zeroinitializer, align 32
@mem_pool_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_pool_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014kmemleak: Memory pool empty, consider increasing CONFIG_DEBUG_KMEMLEAK_MEM_POOL_SIZE\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mem_pool_alloc\00", [17 x i8] zeroinitializer }, align 32
@mem_pool_alloc._entry_ptr = internal global ptr @mem_pool_alloc._entry, section ".printk_index", align 4
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kmemleak_lock\00", [18 x i8] zeroinitializer }, align 32
@dump_object_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015kmemleak: Object 0x%08lx (size %zu):\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dump_object_info\00", [47 x i8] zeroinitializer }, align 32
@dump_object_info._entry_ptr = internal global ptr @dump_object_info._entry, section ".printk_index", align 4
@dump_object_info._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015kmemleak:   comm \22%s\22, pid %d, jiffies %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@dump_object_info._entry_ptr.35 = internal global ptr @dump_object_info._entry.33, section ".printk_index", align 4
@dump_object_info._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015kmemleak:   min_count = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dump_object_info._entry_ptr.38 = internal global ptr @dump_object_info._entry.36, section ".printk_index", align 4
@dump_object_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015kmemleak:   count = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_object_info._entry_ptr.41 = internal global ptr @dump_object_info._entry.39, section ".printk_index", align 4
@dump_object_info._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015kmemleak:   flags = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_object_info._entry_ptr.44 = internal global ptr @dump_object_info._entry.42, section ".printk_index", align 4
@dump_object_info._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015kmemleak:   checksum = %u\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_object_info._entry_ptr.47 = internal global ptr @dump_object_info._entry.45, section ".printk_index", align 4
@dump_object_info._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015kmemleak:   backtrace:\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_object_info._entry_ptr.50 = internal global ptr @dump_object_info._entry.48, section ".printk_index", align 4
@object_set_excess_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014kmemleak: Setting excess_ref on unknown object at 0x%08lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"object_set_excess_ref\00", [42 x i8] zeroinitializer }, align 32
@object_set_excess_ref._entry_ptr = internal global ptr @object_set_excess_ref._entry, section ".printk_index", align 4
@lookup_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014kmemleak: Found object by alias at 0x%08lx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lookup_object\00", [18 x i8] zeroinitializer }, align 32
@lookup_object._entry_ptr = internal global ptr @lookup_object._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@paint_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014kmemleak: Trying to color unknown object at 0x%08lx as %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"paint_ptr\00", [22 x i8] zeroinitializer }, align 32
@paint_ptr._entry_ptr = internal global ptr @paint_ptr._entry, section ".printk_index", align 4
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Grey\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Black\00", [26 x i8] zeroinitializer }, align 32
@add_scan_area._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014kmemleak: Adding scan area to unknown object at 0x%08lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"add_scan_area\00", [18 x i8] zeroinitializer }, align 32
@add_scan_area._entry_ptr = internal global ptr @add_scan_area._entry, section ".printk_index", align 4
@add_scan_area.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@add_scan_area._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014kmemleak: Cannot allocate a scan area, scanning the full object\0A\00", [61 x i8] zeroinitializer }, align 32
@add_scan_area._entry_ptr.67 = internal global ptr @add_scan_area._entry.65, section ".printk_index", align 4
@add_scan_area._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014kmemleak: Scan area larger than object 0x%08lx\0A\00", [46 x i8] zeroinitializer }, align 32
@add_scan_area._entry_ptr.70 = internal global ptr @add_scan_area._entry.68, section ".printk_index", align 4
@object_no_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014kmemleak: Not scanning unknown object at 0x%08lx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"object_no_scan\00", [17 x i8] zeroinitializer }, align 32
@object_no_scan._entry_ptr = internal global ptr @object_no_scan._entry, section ".printk_index", align 4
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@kmemleak_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cleanup_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @cleanup_work, i64 4), ptr getelementptr (i8, ptr @cleanup_work, i64 4) }, ptr @kmemleak_do_cleanup, %struct.lockdep_map { ptr @cleanup_work, [2 x ptr] zeroinitializer, ptr @.str.77, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@kmemleak_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016kmemleak: Kernel memory leak detector disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmemleak_disable\00", [47 x i8] zeroinitializer }, align 32
@kmemleak_disable._entry_ptr = internal global ptr @kmemleak_disable._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cleanup_work\00", [19 x i8] zeroinitializer }, align 32
@scan_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scan_mutex, i64 52), ptr getelementptr (i8, ptr @scan_mutex, i64 52) }, ptr @scan_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.81, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@kmemleak_found_leaks = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kmemleak_do_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\016kmemleak: Kmemleak disabled without freeing internal data. Reclaim the memory with \22echo clear > /sys/kernel/debug/kmemleak\22.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kmemleak_do_cleanup\00", [44 x i8] zeroinitializer }, align 32
@kmemleak_do_cleanup._entry_ptr = internal global ptr @kmemleak_do_cleanup._entry, section ".printk_index", align 4
@scan_thread = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scan_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scan_mutex\00", [21 x i8] zeroinitializer }, align 32
@kmemleak_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @kmemleak_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @kmemleak_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmemleak_late_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016kmemleak: Kernel memory leak detector initialized (mem pool available: %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kmemleak_late_init\00", [45 x i8] zeroinitializer }, align 32
@kmemleak_late_init._entry_ptr = internal global ptr @kmemleak_late_init._entry, section ".printk_index", align 4
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stack=on\00", [23 x i8] zeroinitializer }, align 32
@kmemleak_stack_scan = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stack=off\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scan=on\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scan=off\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scan=\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scan\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dump=\00", [26 x i8] zeroinitializer }, align 32
@kmemleak_clear.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@jiffies_last_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmemleak_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gray_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @gray_list, ptr @gray_list }, [24 x i8] zeroinitializer }, align 32
@__per_cpu_start = external dso_local global [0 x i8], align 1
@__per_cpu_end = external dso_local global [0 x i8], align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@init_task = external dso_local global %struct.task_struct, align 128
@kmemleak_scan.__warned.93 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmemleak_scan.__warned.94 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmemleak_scan.__warned.95 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmemleak_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016kmemleak: %d new suspected memory leaks (see /sys/kernel/debug/kmemleak)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kmemleak_scan\00", [18 x i8] zeroinitializer }, align 32
@kmemleak_scan._entry_ptr = internal global ptr @kmemleak_scan._entry, section ".printk_index", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unreferenced object 0x%08lx (size %zu):\0A\00", [55 x i8] zeroinitializer }, align 32
@print_unreferenced._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014kmemleak: unreferenced object 0x%08lx (size %zu):\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"print_unreferenced\00", [45 x i8] zeroinitializer }, align 32
@print_unreferenced._entry_ptr = internal global ptr @print_unreferenced._entry, section ".printk_index", align 4
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"  comm \22%s\22, pid %d, jiffies %lu (age %d.%03ds)\0A\00", [47 x i8] zeroinitializer }, align 32
@print_unreferenced._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.101, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014kmemleak:   comm \22%s\22, pid %d, jiffies %lu (age %d.%03ds)\0A\00", [35 x i8] zeroinitializer }, align 32
@print_unreferenced._entry_ptr.105 = internal global ptr @print_unreferenced._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  backtrace:\0A\00", [18 x i8] zeroinitializer }, align 32
@print_unreferenced._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.101, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014kmemleak:   backtrace:\0A\00", [38 x i8] zeroinitializer }, align 32
@print_unreferenced._entry_ptr.109 = internal global ptr @print_unreferenced._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"    [<%p>] %pS\0A\00", [16 x i8] zeroinitializer }, align 32
@print_unreferenced._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014kmemleak:     [<%p>] %pS\0A\00", [36 x i8] zeroinitializer }, align 32
@print_unreferenced._entry_ptr.113 = internal global ptr @print_unreferenced._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  hex dump (first %zu bytes):\0A\00", [33 x i8] zeroinitializer }, align 32
@hex_dump_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014kmemleak:   hex dump (first %zu bytes):\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hex_dump_object\00", [16 x i8] zeroinitializer }, align 32
@hex_dump_object._entry_ptr = internal global ptr @hex_dump_object._entry, section ".printk_index", align 4
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kmemleak:     \00", [17 x i8] zeroinitializer }, align 32
@dump_str_object_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 1725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016kmemleak: Unknown object at 0x%08lx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dump_str_object_info\00", [43 x i8] zeroinitializer }, align 32
@dump_str_object_info._entry_ptr = internal global ptr @dump_str_object_info._entry, section ".printk_index", align 4
@kmemleak_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kmemleak_seq_start, ptr @kmemleak_seq_stop, ptr @kmemleak_seq_next, ptr @kmemleak_seq_show }, [16 x i8] zeroinitializer }, align 32
@kmemleak_seq_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@start_scan_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014kmemleak: Failed to create the scan thread\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"start_scan_thread\00", [46 x i8] zeroinitializer }, align 32
@start_scan_thread._entry_ptr = internal global ptr @start_scan_thread._entry, section ".printk_index", align 4
@kmemleak_scan_thread.first_run = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kmemleak_scan_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016kmemleak: Automatic memory scanning thread started\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmemleak_scan_thread\00", [43 x i8] zeroinitializer }, align 32
@kmemleak_scan_thread._entry_ptr = internal global ptr @kmemleak_scan_thread._entry, section ".printk_index", align 4
@kmemleak_scan_thread._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016kmemleak: Automatic memory scanning thread ended\0A\00", [44 x i8] zeroinitializer }, align 32
@kmemleak_scan_thread._entry_ptr.128 = internal global ptr @kmemleak_scan_thread._entry.126, section ".printk_index", align 4
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"softirq\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardirq\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"kmemleak_verbose\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 233, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 899, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"kmemleak_enabled\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 920, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 944, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 967, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"kmemleak_free_enabled\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 985, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1003, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1024, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1055, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1073, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1093, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1111, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"kmemleak_skip_disable\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [15 x i8] c"kmemleak_error\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 212, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"jiffies_min_age\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"jiffies_scan_wait\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 223, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1959, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant [13 x i8] c"object_cache\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 200, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"scan_area_cache\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 201, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 588, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 596, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [14 x i8] c"kmemleak_lock\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [9 x i8] c"min_addr\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 215, i32 22 }
@___asan_gen_.230 = private unnamed_addr constant [9 x i8] c"max_addr\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 216, i32 22 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"object_tree_root\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 195, i32 23 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 644, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [12 x i8] c"object_list\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 187, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"mem_pool_free_list\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 193, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c"mem_pool_free_count\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 192, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant [9 x i8] c"mem_pool\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 191, i32 31 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 444, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 197, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 363, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 365, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 367, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 368, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 369, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 370, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 371, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 849, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 400, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 695, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 723, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 762, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 802, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 812, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 820, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 872, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1931, i32 18 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1933, i32 23 }
@___asan_gen_.389 = private unnamed_addr constant [21 x i8] c"kmemleak_initialized\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [13 x i8] c"cleanup_work\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1921, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1900, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant [11 x i8] c"scan_mutex\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"kmemleak_found_leaks\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1897, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant [12 x i8] c"scan_thread\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 218, i32 28 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 227, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant [14 x i8] c"kmemleak_fops\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1852, i32 37 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 2000, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1795, i32 19 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1810, i32 24 }
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c"kmemleak_stack_scan\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1812, i32 24 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1814, i32 24 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1816, i32 24 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1818, i32 24 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1835, i32 26 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1837, i32 24 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1749, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [18 x i8] c"jiffies_last_scan\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 221, i32 22 }
@___asan_gen_.470 = private unnamed_addr constant [10 x i8] c"gray_list\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 189, i32 8 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1551, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 1368, i32 10 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 342, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 344, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 348, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 352, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 291, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 269, i32 21 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 272, i32 18 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 272, i32 32 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1725, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant [17 x i8] c"kmemleak_seq_ops\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1703, i32 36 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1605, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant [31 x i8] c"kmemleak_scan_thread.first_run\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1565, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.580 = private constant [17 x i8] c"../mm/kmemleak.c\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1590, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [8 x i8] c"str.129\00", align 1
@llvm.compiler.used = appending global [207 x ptr] [ptr @__UNIQUE_ID_verbosetype226, ptr @__initcall__kmod_kmemleak__268_2005_kmemleak_late_init7, ptr @__ksymtab_kmemleak_alloc, ptr @__ksymtab_kmemleak_alloc_percpu, ptr @__ksymtab_kmemleak_alloc_phys, ptr @__ksymtab_kmemleak_free, ptr @__ksymtab_kmemleak_free_part, ptr @__ksymtab_kmemleak_free_part_phys, ptr @__ksymtab_kmemleak_free_percpu, ptr @__ksymtab_kmemleak_ignore, ptr @__ksymtab_kmemleak_ignore_phys, ptr @__ksymtab_kmemleak_no_scan, ptr @__ksymtab_kmemleak_not_leak, ptr @__ksymtab_kmemleak_not_leak_phys, ptr @__ksymtab_kmemleak_scan_area, ptr @__ksymtab_kmemleak_update_trace, ptr @__ksymtab_kmemleak_vmalloc, ptr @__param_verbose, ptr @__setup_kmemleak_boot_config, ptr @add_scan_area._entry, ptr @add_scan_area._entry.65, ptr @add_scan_area._entry.68, ptr @add_scan_area._entry_ptr, ptr @add_scan_area._entry_ptr.67, ptr @add_scan_area._entry_ptr.70, ptr @create_object._entry, ptr @create_object._entry.25, ptr @create_object._entry_ptr, ptr @create_object._entry_ptr.27, ptr @dump_object_info._entry, ptr @dump_object_info._entry.33, ptr @dump_object_info._entry.36, ptr @dump_object_info._entry.39, ptr @dump_object_info._entry.42, ptr @dump_object_info._entry.45, ptr @dump_object_info._entry.48, ptr @dump_object_info._entry_ptr, ptr @dump_object_info._entry_ptr.35, ptr @dump_object_info._entry_ptr.38, ptr @dump_object_info._entry_ptr.41, ptr @dump_object_info._entry_ptr.44, ptr @dump_object_info._entry_ptr.47, ptr @dump_object_info._entry_ptr.50, ptr @dump_str_object_info._entry, ptr @dump_str_object_info._entry_ptr, ptr @hex_dump_object._entry, ptr @hex_dump_object._entry_ptr, ptr @kmemleak_disable._entry, ptr @kmemleak_disable._entry_ptr, ptr @kmemleak_do_cleanup._entry, ptr @kmemleak_do_cleanup._entry_ptr, ptr @kmemleak_late_init._entry, ptr @kmemleak_late_init._entry_ptr, ptr @kmemleak_scan._entry, ptr @kmemleak_scan._entry_ptr, ptr @kmemleak_scan_thread._entry, ptr @kmemleak_scan_thread._entry.126, ptr @kmemleak_scan_thread._entry_ptr, ptr @kmemleak_scan_thread._entry_ptr.128, ptr @lookup_object._entry, ptr @lookup_object._entry_ptr, ptr @mem_pool_alloc._entry, ptr @mem_pool_alloc._entry_ptr, ptr @object_no_scan._entry, ptr @object_no_scan._entry_ptr, ptr @object_set_excess_ref._entry, ptr @object_set_excess_ref._entry_ptr, ptr @paint_ptr._entry, ptr @paint_ptr._entry_ptr, ptr @print_unreferenced._entry, ptr @print_unreferenced._entry.103, ptr @print_unreferenced._entry.107, ptr @print_unreferenced._entry.111, ptr @print_unreferenced._entry_ptr, ptr @print_unreferenced._entry_ptr.105, ptr @print_unreferenced._entry_ptr.109, ptr @print_unreferenced._entry_ptr.113, ptr @start_scan_thread._entry, ptr @start_scan_thread._entry_ptr, ptr @kmemleak_verbose, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @kmemleak_enabled, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @kmemleak_free_enabled, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @kmemleak_skip_disable, ptr @kmemleak_error, ptr @jiffies_min_age, ptr @jiffies_scan_wait, ptr @.str.19, ptr @object_cache, ptr @scan_area_cache, ptr @.str.20, ptr @.str.21, ptr @create_object.__key, ptr @.str.22, ptr @kmemleak_lock, ptr @min_addr, ptr @max_addr, ptr @object_tree_root, ptr @.str.26, ptr @object_list, ptr @mem_pool_free_list, ptr @mem_pool_free_count, ptr @mem_pool, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @kmemleak_initialized, ptr @cleanup_work, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @scan_mutex, ptr @kmemleak_found_leaks, ptr @.str.78, ptr @.str.79, ptr @scan_thread, ptr @.str.80, ptr @.str.81, ptr @kmemleak_fops, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @kmemleak_stack_scan, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @jiffies_last_scan, ptr @gray_list, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @kmemleak_seq_ops, ptr @.str.122, ptr @.str.123, ptr @kmemleak_scan_thread.first_run, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @str, ptr @str.129], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_verbose to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_free_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_skip_disable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_error to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffies_min_age to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffies_scan_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_area_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_object.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_tree_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_object._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_pool_free_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_pool_free_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_pool to i32), i32 3328000, i32 3590144, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_pool_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_object_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_object_info._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_object_info._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_object_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_object_info._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_object_info._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_object_info._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_set_excess_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paint_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_scan_area._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_scan_area._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_scan_area._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_no_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_found_leaks to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_do_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_thread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_late_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_stack_scan to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffies_last_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gray_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_unreferenced._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_unreferenced._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_unreferenced._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_unreferenced._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hex_dump_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_str_object_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_scan_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_scan_thread.first_run to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_scan_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmemleak_scan_thread._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_alloc(ptr noundef %ptr, i32 noundef %size, i32 noundef %min_count, i32 noundef %gfp) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_alloc.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_alloc, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_alloc.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %ptr, i32 noundef %size, i32 noundef %min_count) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond16 = or i1 %cmp.i, %or.cond
  br i1 %or.cond16, label %if.end9, label %if.then7

if.then7:                                         ; preds = %do.end
  %0 = ptrtoint ptr %ptr to i32
  tail call fastcc void @create_object(i32 noundef %0, i32 noundef %size, i32 noundef %min_count, i32 noundef %gfp)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_object(i32 noundef %ptr, i32 noundef %size, i32 noundef %min_count, i32 noundef %gfp) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @object_cache, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and.i = and i32 %gfp, 33558240
  %or2.i = or i32 %and.i, 598016
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %0, i32 noundef %or2.i) #14
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.then.i, %entry
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kmemleak_lock) #14
  %1 = load volatile ptr, ptr @mem_pool_free_list, align 4
  %cmp12.not.i = icmp eq ptr %1, @mem_pool_free_list
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  %tobool15.not61.i = icmp eq ptr %add.ptr.i, null
  %tobool15.not.i = or i1 %cmp12.not.i, %tobool15.not61.i
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %do.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %mem_pool_alloc.exit.thread34

if.end.i.i.i:                                     ; preds = %if.then16.i
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %mem_pool_alloc.exit.thread34

mem_pool_alloc.exit.thread34:                     ; preds = %if.end.i.i.i, %if.then16.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call6.i) #14
  br label %if.end

if.else.i:                                        ; preds = %do.body.i
  %10 = load i32, ptr @mem_pool_free_count, align 4
  %tobool17.not.i = icmp eq i32 %10, 0
  br i1 %tobool17.not.i, label %land.end.i, label %mem_pool_alloc.exit

land.end.i:                                       ; preds = %if.else.i
  %.b60.i = load i1, ptr @mem_pool_alloc.__already_done, align 1
  br i1 %.b60.i, label %mem_pool_alloc.exit.thread31, label %if.then26.i, !prof !357

if.then26.i:                                      ; preds = %land.end.i
  store i1 true, ptr @mem_pool_alloc.__already_done, align 1
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #16
  br label %mem_pool_alloc.exit.thread31

mem_pool_alloc.exit.thread31:                     ; preds = %if.then26.i, %land.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call6.i) #14
  br label %do.end

mem_pool_alloc.exit:                              ; preds = %if.else.i
  %dec.i = add i32 %10, -1
  store i32 %dec.i, ptr @mem_pool_free_count, align 4
  %arrayidx.i = getelementptr [16000 x %struct.kmemleak_object], ptr @mem_pool, i32 0, i32 %dec.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call6.i) #14
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %mem_pool_alloc.exit, %mem_pool_alloc.exit.thread31
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmemleak_error, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr nonnull @kmemleak_error, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %do.end
  %11 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @kmemleak_error, i32 0, i32 1) #14, !srcloc !359
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !360
  %tobool.not.i4 = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool.not.i4, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %__cmpxchg.exit.i
  store i1 true, ptr @kmemleak_enabled, align 4
  %.b.i = load i1, ptr @kmemleak_initialized, align 4
  br i1 %.b.i, label %if.then16.i6, label %if.else.i7

if.then16.i6:                                     ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i5 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef nonnull @cleanup_work) #14
  br label %do.end21.i

if.else.i7:                                       ; preds = %if.end.i
  store i1 true, ptr @kmemleak_free_enabled, align 4
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.else.i7, %if.then16.i6
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %cleanup

if.end:                                           ; preds = %mem_pool_alloc.exit, %mem_pool_alloc.exit.thread34, %if.then.i
  %retval.0.i29 = phi ptr [ %arrayidx.i, %mem_pool_alloc.exit ], [ %add.ptr.i, %mem_pool_alloc.exit.thread34 ], [ %call.i, %if.then.i ]
  %object_list = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 2
  %13 = ptrtoint ptr %object_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %object_list, ptr %object_list, align 4
  %prev.i = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %object_list, ptr %prev.i, align 4
  %gray_list = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 3
  %15 = ptrtoint ptr %gray_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %gray_list, ptr %gray_list, align 4
  %prev.i8 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %gray_list, ptr %prev.i8, align 4
  %area_list = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 13
  %17 = ptrtoint ptr %area_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %area_list, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %retval.0.i29, ptr noundef nonnull @.str.22, ptr noundef nonnull @create_object.__key, i16 noundef signext 2) #14
  %use_count = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #14
  %18 = ptrtoint ptr %use_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %use_count, align 4
  %flags5 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 1
  %19 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %flags5, align 4
  %pointer = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 7
  %20 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ptr, ptr %pointer, align 4
  %21 = inttoptr i32 %ptr to ptr
  %call6 = tail call i32 @kfence_ksize(ptr noundef %21) #14
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 %size, i32 %call6
  %size8 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 8
  %22 = ptrtoint ptr %size8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %size8, align 4
  %excess_ref = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 9
  %23 = ptrtoint ptr %excess_ref to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %excess_ref, align 4
  %min_count9 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 10
  %24 = ptrtoint ptr %min_count9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %min_count, ptr %min_count9, align 4
  %count = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 11
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 16
  %27 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %jiffies, align 4
  %checksum = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 12
  %28 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %checksum, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %32, 983040
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %pid = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 17
  %33 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pid, align 4
  %comm = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 18
  %34 = call ptr @memcpy(ptr %comm, ptr @str.129, i32 16)
  br label %if.end35

if.else:                                          ; preds = %if.end
  %35 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i1 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i1 to ptr
  %preempt_count.i2 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i2, align 4
  %and16 = and i32 %38, 256
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else23, label %if.then18

if.then18:                                        ; preds = %if.else
  %pid19 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 17
  %39 = ptrtoint ptr %pid19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pid19, align 4
  %comm20 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 18
  %40 = call ptr @memcpy(ptr %comm20, ptr @str, i32 16)
  br label %if.end35

if.else23:                                        ; preds = %if.else
  %41 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i9 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i9 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %pid25 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid25, align 8
  %pid26 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 17
  %47 = ptrtoint ptr %pid26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %pid26, align 4
  %comm27 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 18
  %48 = load ptr, ptr %task, align 8
  %comm31 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 101
  %call33 = tail call ptr @strncpy(ptr noundef %comm27, ptr noundef %comm31, i32 noundef 16)
  br label %if.end35

if.end35:                                         ; preds = %if.else23, %if.then18, %if.then12
  %trace = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 14
  %call.i10 = tail call i32 @stack_trace_save(ptr noundef %trace, i32 noundef 16, i32 noundef 2) #14
  %trace_len = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 15
  %49 = ptrtoint ptr %trace_len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i10, ptr %trace_len, align 4
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kmemleak_lock) #14
  %50 = load i32, ptr @min_addr, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %ptr)
  store i32 %51, ptr @min_addr, align 4
  %52 = load i32, ptr @max_addr, align 4
  %add = add i32 %size, %ptr
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %add)
  store i32 %53, ptr @max_addr, align 4
  %54 = load ptr, ptr @object_tree_root, align 4
  %tobool58.not41 = icmp eq ptr %54, null
  br i1 %tobool58.not41, label %while.end, label %while.body

while.body:                                       ; preds = %if.end86, %if.end35
  %55 = phi ptr [ %64, %if.end86 ], [ %54, %if.end35 ]
  %pointer60 = getelementptr i8, ptr %55, i32 24
  %56 = ptrtoint ptr %pointer60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pointer60, align 4
  %cmp63.not = icmp ugt i32 %add, %57
  br i1 %cmp63.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %55, i32 0, i32 2
  br label %if.end86

if.else66:                                        ; preds = %while.body
  %size67 = getelementptr i8, ptr %55, i32 28
  %58 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size67, align 4
  %add68 = add i32 %59, %57
  %cmp69.not = icmp ugt i32 %add68, %ptr
  br i1 %cmp69.not, label %do.end78, label %if.then71

if.then71:                                        ; preds = %if.else66
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %55, i32 0, i32 1
  br label %if.end86

do.end78:                                         ; preds = %if.else66
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %ptr) #16
  tail call void @dump_stack() #16
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmemleak_error, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr nonnull @kmemleak_error, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i14

do.body.i.i14:                                    ; preds = %do.body.i.i14, %do.end78
  %60 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @kmemleak_error, i32 0, i32 1) #14, !srcloc !359
  %asmresult.i.i12 = extractvalue { i32, i32 } %60, 0
  %tobool.not.i.i13 = icmp eq i32 %asmresult.i.i12, 0
  br i1 %tobool.not.i.i13, label %__cmpxchg.exit.i17, label %do.body.i.i14

__cmpxchg.exit.i17:                               ; preds = %do.body.i.i14
  %add.ptr.le = getelementptr i8, ptr %55, i32 -64
  %asmresult1.i.i15 = extractvalue { i32, i32 } %60, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !360
  %tobool.not.i16 = icmp eq i32 %asmresult1.i.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %kmemleak_disable.exit25

if.end.i19:                                       ; preds = %__cmpxchg.exit.i17
  store i1 true, ptr @kmemleak_enabled, align 4
  %.b.i18 = load i1, ptr @kmemleak_initialized, align 4
  br i1 %.b.i18, label %if.then16.i21, label %if.else.i22

if.then16.i21:                                    ; preds = %if.end.i19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %61 = load ptr, ptr @system_wq, align 4
  %call.i.i.i20 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %61, ptr noundef nonnull @cleanup_work) #14
  br label %do.end21.i24

if.else.i22:                                      ; preds = %if.end.i19
  store i1 true, ptr @kmemleak_free_enabled, align 4
  br label %do.end21.i24

do.end21.i24:                                     ; preds = %if.else.i22, %if.then16.i21
  %call23.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %kmemleak_disable.exit25

kmemleak_disable.exit25:                          ; preds = %do.end21.i24, %__cmpxchg.exit.i17
  tail call fastcc void @dump_object_info(ptr noundef %add.ptr.le)
  %62 = load ptr, ptr @object_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %62, ptr noundef %retval.0.i29) #14
  br label %do.body90

if.end86:                                         ; preds = %if.then71, %if.then65
  %link.1 = phi ptr [ %rb_left, %if.then65 ], [ %rb_right, %if.then71 ]
  %63 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %link.1, align 4
  %tobool58.not = icmp eq ptr %64, null
  br i1 %tobool58.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end86
  %phi.cast.le = ptrtoint ptr %55 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end35
  %rb_parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end35 ]
  %link.0.lcssa = phi ptr [ %link.1, %while.cond.while.end_crit_edge ], [ @object_tree_root, %if.end35 ]
  %rb_node87 = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 4
  %65 = ptrtoint ptr %rb_node87 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rb_parent.0.lcssa, ptr %rb_node87, align 4
  %rb_right.i = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.kmemleak_object, ptr %retval.0.i29, i32 0, i32 4, i32 2
  %67 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rb_left.i, align 4
  %68 = ptrtoint ptr %link.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rb_node87, ptr %link.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node87, ptr noundef nonnull @object_tree_root) #14
  %69 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @object_list, i32 0, i32 1), align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef %object_list, ptr noundef %69, ptr noundef nonnull @object_list) #14
  br i1 %call.i.i26, label %if.end.i.i, label %do.body90

if.end.i.i:                                       ; preds = %while.end
  %70 = ptrtoint ptr %object_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @object_list, ptr %object_list, align 4
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !361
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %object_list, ptr %69, align 4
  store ptr %object_list, ptr getelementptr inbounds (%struct.list_head, ptr @object_list, i32 0, i32 1), align 4
  br label %do.body90

do.body90:                                        ; preds = %if.end.i.i, %while.end, %kmemleak_disable.exit25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call40) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body90, %do.end21.i, %__cmpxchg.exit.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_alloc_percpu(ptr noundef %ptr, i32 noundef %size, i32 noundef %gfp) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_alloc_percpu.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_alloc_percpu, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_alloc_percpu.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %ptr, i32 noundef %size) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond23 = or i1 %cmp.i, %or.cond
  br i1 %or.cond23, label %if.end15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %call824 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp25 = icmp ult i32 %call824, %0
  br i1 %cmp25, label %do.body9.lr.ph, label %if.end15

do.body9.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %ptr to i32
  br label %do.body9

do.body9:                                         ; preds = %do.body9, %do.body9.lr.ph
  %call826 = phi i32 [ %call824, %do.body9.lr.ph ], [ %call8, %do.body9 ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call826
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  tail call fastcc void @create_object(i32 noundef %add, i32 noundef %size, i32 noundef 0, i32 noundef %gfp)
  %call8 = tail call i32 @cpumask_next(i32 noundef %call826, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %4
  br i1 %cmp, label %do.body9, label %if.end15

if.end15:                                         ; preds = %do.body9, %for.cond.preheader, %do.end
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_vmalloc(ptr noundef %area, i32 noundef %size, i32 noundef %gfp) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_vmalloc.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_vmalloc, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_vmalloc.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %area, i32 noundef %size) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  br i1 %.b, label %if.end7, label %if.then4

if.then4:                                         ; preds = %do.end
  %addr = getelementptr inbounds %struct.vm_struct, ptr %area, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %1 to i32
  tail call fastcc void @create_object(i32 noundef %2, i32 noundef %size, i32 noundef 2, i32 noundef %gfp)
  %3 = ptrtoint ptr %area to i32
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %call.i = tail call fastcc ptr @find_and_get_object(i32 noundef %3, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body5.i

do.end.i:                                         ; preds = %if.then4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %3) #16
  tail call void @dump_stack() #16
  br label %if.end7

do.body5.i:                                       ; preds = %if.then4
  %6 = ptrtoint ptr %5 to i32
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #14
  %excess_ref10.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %excess_ref10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %excess_ref10.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i, i32 noundef %call7.i) #14
  tail call fastcc void @put_object(ptr noundef nonnull %call.i) #14
  br label %if.end7

if.end7:                                          ; preds = %do.body5.i, %do.end.i, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_free(ptr noundef %ptr) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_free.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_free, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_free.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_free_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond13 = or i1 %cmp.i, %or.cond
  br i1 %or.cond13, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  %0 = ptrtoint ptr %ptr to i32
  %call.i = tail call fastcc ptr @find_and_remove_object(i32 noundef %0, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8, label %if.end.i

if.end.i:                                         ; preds = %if.then7
  tail call fastcc void @__delete_object(ptr noundef nonnull %call.i) #14
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %if.then7, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_free_part(ptr noundef %ptr, i32 noundef %size) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_free_part.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_free_part, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_free_part.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond14 = or i1 %cmp.i, %or.cond
  br i1 %or.cond14, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  %0 = ptrtoint ptr %ptr to i32
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kmemleak_lock) #14
  %rb.039.i.i.i = load ptr, ptr @object_tree_root, align 4
  %tobool.not40.i.i.i = icmp eq ptr %rb.039.i.i.i, null
  br i1 %tobool.not40.i.i.i, label %find_and_remove_object.exit.thread.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i, %if.then7
  %rb.041.i.i.i = phi ptr [ %rb.0.i.i.i, %cleanup.i.i.i ], [ %rb.039.i.i.i, %if.then7 ]
  %pointer.i.i.i = getelementptr i8, ptr %rb.041.i.i.i, i32 24
  %1 = ptrtoint ptr %pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pointer.i.i.i, align 4
  %3 = inttoptr i32 %2 to ptr
  %cmp.i.i.i = icmp ugt ptr %3, %ptr
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %size.i.i.i = getelementptr i8, ptr %rb.041.i.i.i, i32 28
  %4 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i.i.i, align 4
  %add.i.i.i = add i32 %5, %2
  %cmp2.not.i.i.i = icmp ugt i32 %add.i.i.i, %0
  br i1 %cmp2.not.i.i.i, label %if.else5.i.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

if.else5.i.i.i:                                   ; preds = %if.else.i.i.i
  %pointer.i.i.i.le = getelementptr i8, ptr %rb.041.i.i.i, i32 24
  %size.i.i.i.le = getelementptr i8, ptr %rb.041.i.i.i, i32 28
  %add.ptr.le.i.i.i = getelementptr i8, ptr %rb.041.i.i.i, i32 -64
  %tobool.not.i.i = icmp eq ptr %add.ptr.le.i.i.i, null
  br i1 %tobool.not.i.i, label %find_and_remove_object.exit.thread.i, label %if.then.i.i

cleanup.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %rb.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then3.i.i.i ]
  %6 = ptrtoint ptr %rb.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %rb.0.i.i.i = load ptr, ptr %rb.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %rb.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %find_and_remove_object.exit.thread.i, label %while.body.i.i.i

if.then.i.i:                                      ; preds = %if.else5.i.i.i
  tail call void @rb_erase(ptr noundef nonnull %rb.041.i.i.i, ptr noundef nonnull @object_tree_root) #14
  %object_list.i.i.i = getelementptr i8, ptr %rb.041.i.i.i, i32 -16
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %object_list.i.i.i) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i
  %prev.i.i.i.i.i = getelementptr i8, ptr %rb.041.i.i.i, i32 -12
  %7 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %object_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %object_list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %if.end.i

find_and_remove_object.exit.thread.i:             ; preds = %cleanup.i.i.i, %if.else5.i.i.i, %if.then7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call.i.i) #14
  br label %if.end8

if.end.i:                                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i
  %prev.i.i.i.i = getelementptr i8, ptr %rb.041.i.i.i, i32 -12
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call.i.i) #14
  %14 = ptrtoint ptr %pointer.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pointer.i.i.i.le, align 4
  %16 = ptrtoint ptr %size.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i.i.le, align 4
  %add.i = add i32 %17, %15
  %cmp.i12 = icmp ult i32 %15, %0
  br i1 %cmp.i12, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %0, %15
  %min_count.i = getelementptr i8, ptr %rb.041.i.i.i, i32 36
  %18 = ptrtoint ptr %min_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_count.i, align 4
  tail call fastcc void @create_object(i32 noundef %15, i32 noundef %sub.i, i32 noundef %19, i32 noundef 3264) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i
  %add6.i = add i32 %0, %size
  %cmp7.i = icmp ugt i32 %add.i, %add6.i
  br i1 %cmp7.i, label %if.then8.i, label %if.end14.i

if.then8.i:                                       ; preds = %if.end5.i
  %sub11.i = sub i32 %add.i, %add6.i
  %min_count12.i = getelementptr i8, ptr %rb.041.i.i.i, i32 36
  %20 = ptrtoint ptr %min_count12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_count12.i, align 4
  tail call fastcc void @create_object(i32 noundef %add6.i, i32 noundef %sub11.i, i32 noundef %21, i32 noundef 3264) #14
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end5.i
  tail call fastcc void @__delete_object(ptr noundef nonnull %add.ptr.le.i.i.i) #14
  br label %if.end8

if.end8:                                          ; preds = %if.end14.i, %find_and_remove_object.exit.thread.i, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_free_percpu(ptr noundef %ptr) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_free_percpu.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_free_percpu, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_free_percpu.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_free_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond21 = or i1 %cmp.i, %or.cond
  br i1 %or.cond21, label %if.end14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %call822 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp23 = icmp ult i32 %call822, %0
  br i1 %cmp23, label %do.body9.lr.ph, label %if.end14

do.body9.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %ptr to i32
  br label %do.body9

do.body9:                                         ; preds = %delete_object_full.exit, %do.body9.lr.ph
  %call824 = phi i32 [ %call822, %do.body9.lr.ph ], [ %call8, %delete_object_full.exit ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call824
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %call.i = tail call fastcc ptr @find_and_remove_object(i32 noundef %add, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %delete_object_full.exit, label %if.end.i

if.end.i:                                         ; preds = %do.body9
  tail call fastcc void @__delete_object(ptr noundef nonnull %call.i) #14
  br label %delete_object_full.exit

delete_object_full.exit:                          ; preds = %if.end.i, %do.body9
  %call8 = tail call i32 @cpumask_next(i32 noundef %call824, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %4
  br i1 %cmp, label %do.body9, label %if.end14

if.end14:                                         ; preds = %delete_object_full.exit, %for.cond.preheader, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_update_trace(ptr noundef %ptr) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_update_trace.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_update_trace, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_update_trace.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  br i1 %.b, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %tobool.not.i = icmp eq ptr %ptr, null
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %0 = ptrtoint ptr %ptr to i32
  %call7 = tail call fastcc ptr @find_and_get_object(i32 noundef %0, i32 noundef 1)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cleanup, label %do.body11

do.body11:                                        ; preds = %if.end6
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call7) #14
  %trace = getelementptr inbounds %struct.kmemleak_object, ptr %call7, i32 0, i32 14
  %call.i = tail call i32 @stack_trace_save(ptr noundef %trace, i32 noundef 16, i32 noundef 2) #14
  %trace_len = getelementptr inbounds %struct.kmemleak_object, ptr %call7, i32 0, i32 15
  %1 = ptrtoint ptr %trace_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.i, ptr %trace_len, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call7, i32 noundef %call13) #14
  tail call fastcc void @put_object(ptr noundef nonnull %call7)
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %if.end6, %lor.lhs.false, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_and_get_object(i32 noundef %ptr, i32 noundef %alias) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !362
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kmemleak_lock) #14
  %4 = inttoptr i32 %ptr to ptr
  %rb.039.i = load ptr, ptr @object_tree_root, align 4
  %tobool.not40.i = icmp eq ptr %rb.039.i, null
  br i1 %tobool.not40.i, label %lookup_object.exit.thread, label %while.body.i

while.body.i:                                     ; preds = %cleanup.i, %rcu_read_lock.exit
  %rb.041.i = phi ptr [ %rb.0.i, %cleanup.i ], [ %rb.039.i, %rcu_read_lock.exit ]
  %pointer.i = getelementptr i8, ptr %rb.041.i, i32 24
  %5 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pointer.i, align 4
  %7 = inttoptr i32 %6 to ptr
  %cmp.i = icmp ult ptr %4, %7
  br i1 %cmp.i, label %if.then.i14, label %if.else.i

if.then.i14:                                      ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %size.i = getelementptr i8, ptr %rb.041.i, i32 28
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %add.i = add i32 %9, %6
  %cmp2.not.i = icmp ugt i32 %add.i, %ptr
  br i1 %cmp2.not.i, label %if.else5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i, i32 0, i32 1
  br label %cleanup.i

if.else5.i:                                       ; preds = %if.else.i
  %10 = inttoptr i32 %6 to ptr
  %add.ptr.le.i = getelementptr i8, ptr %rb.041.i, i32 -64
  %cmp6.i = icmp ne ptr %10, %4
  %tobool7.not.i = icmp eq i32 %alias, 0
  %or.cond.i = and i1 %tobool7.not.i, %cmp6.i
  br i1 %or.cond.i, label %cleanup.thread34.i, label %lookup_object.exit

cleanup.thread34.i:                               ; preds = %if.else5.i
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %ptr) #16
  tail call void @dump_stack() #16
  tail call fastcc void @dump_object_info(ptr noundef %add.ptr.le.i) #14
  br label %lookup_object.exit.thread

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i14
  %rb.1.in.i = phi ptr [ %rb_left.i, %if.then.i14 ], [ %rb_right.i, %if.then3.i ]
  %11 = ptrtoint ptr %rb.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %rb.0.i = load ptr, ptr %rb.1.in.i, align 4
  %tobool.not.i15 = icmp eq ptr %rb.0.i, null
  br i1 %tobool.not.i15, label %lookup_object.exit.thread, label %while.body.i

lookup_object.exit.thread:                        ; preds = %cleanup.i, %cleanup.thread34.i, %rcu_read_lock.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call) #14
  br label %if.end

lookup_object.exit:                               ; preds = %if.else5.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call) #14
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lookup_object.exit
  %use_count.i = getelementptr i8, ptr %rb.041.i, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %use_count.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %use_count.i, ptr %use_count.i, i32 0, i32 1, ptr elementtype(i32) %use_count.i) #14, !srcloc !364
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end, label %do.end11.i.i.i.i.i

do.end11.i.i.i.i.i:                               ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !365
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i.i, %land.lhs.true, %lookup_object.exit, %lookup_object.exit.thread
  %object.0 = phi ptr [ null, %lookup_object.exit ], [ null, %lookup_object.exit.thread ], [ null, %land.lhs.true ], [ %add.ptr.le.i, %do.end11.i.i.i.i.i ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i16, label %rcu_read_unlock.exit, label %land.lhs.true.i19

land.lhs.true.i19:                                ; preds = %if.end
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %rcu_read_unlock.exit, label %land.lhs.true2.i21

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %rcu_read_unlock.exit, label %if.then.i22

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21, %land.lhs.true.i19, %if.end
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %13 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i23 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %object.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_object(ptr noundef %object) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %use_count = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !367
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #14, !srcloc !368
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !369
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %if.end25

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15, label %do.end, !prof !357

do.end:                                           ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 502, i32 noundef 9, ptr noundef null) #14
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end
  %3 = load ptr, ptr @object_cache, align 4
  %tobool22.not = icmp eq ptr %3, null
  %rcu24 = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 5
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end15
  tail call void @call_rcu(ptr noundef %rcu24, ptr noundef nonnull @free_object_rcu) #14
  br label %if.end25

if.else:                                          ; preds = %if.end15
  tail call void @free_object_rcu(ptr noundef %rcu24)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_not_leak(ptr noundef %ptr) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_not_leak.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_not_leak, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_not_leak.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond13 = or i1 %cmp.i, %or.cond
  br i1 %or.cond13, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  %0 = ptrtoint ptr %ptr to i32
  %call.i.i = tail call fastcc ptr @find_and_get_object(i32 noundef %0, i32 noundef 0) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then7
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %0, ptr noundef nonnull @.str.60) #16
  tail call void @dump_stack() #16
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then7
  %call.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i.i) #14
  %min_count.i.i.i.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %min_count.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_count.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i.i, i32 noundef %call.i.i.i) #14
  tail call fastcc void @put_object(ptr noundef nonnull %call.i.i) #14
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i, %do.end.i.i, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_ignore(ptr noundef %ptr) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_ignore.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_ignore, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_ignore.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond13 = or i1 %cmp.i, %or.cond
  br i1 %or.cond13, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  %0 = ptrtoint ptr %ptr to i32
  %call.i.i = tail call fastcc ptr @find_and_get_object(i32 noundef %0, i32 noundef 0) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then7
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %0, ptr noundef nonnull @.str.61) #16
  tail call void @dump_stack() #16
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then7
  %call.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i.i) #14
  %min_count.i.i.i.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %min_count.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %min_count.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %3, 4
  store i32 %or.i.i.i.i, ptr %flags.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i.i, i32 noundef %call.i.i.i) #14
  tail call fastcc void @put_object(ptr noundef nonnull %call.i.i) #14
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i, %do.end.i.i, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_scan_area(ptr noundef %ptr, i32 noundef %size, i32 noundef %gfp) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_scan_area.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_scan_area, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_scan_area.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %tobool6.not = icmp eq i32 %size, 0
  %or.cond15 = or i1 %tobool6.not, %or.cond
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond17 = or i1 %cmp.i, %or.cond15
  br i1 %or.cond17, label %if.end10, label %if.then9

if.then9:                                         ; preds = %do.end
  %0 = ptrtoint ptr %ptr to i32
  %call.i = tail call fastcc ptr @find_and_get_object(i32 noundef %0, i32 noundef 1) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %0) #16
  tail call void @dump_stack() #16
  br label %if.end10

if.end.i:                                         ; preds = %if.then9
  %1 = load ptr, ptr @scan_area_cache, align 4
  %tobool5.not.i = icmp eq ptr %1, null
  br i1 %tobool5.not.i, label %do.body11.thread.i, label %do.body11.i

do.body11.thread.i:                               ; preds = %if.end.i
  %call13101.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #14
  br label %land.end.i

do.body11.i:                                      ; preds = %if.end.i
  %and.i = and i32 %gfp, 33558240
  %or8.i = or i32 %and.i, 598016
  %call9.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %1, i32 noundef %or8.i) #14
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #14
  %tobool16.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool16.not.i, label %land.end.i, label %if.end40.i

land.end.i:                                       ; preds = %do.body11.i, %do.body11.thread.i
  %call13106.i = phi i32 [ %call13101.i, %do.body11.thread.i ], [ %call13.i, %do.body11.i ]
  %.b98.i = load i1, ptr @add_scan_area.__already_done, align 1
  br i1 %.b98.i, label %if.end30.i, label %if.then24.i, !prof !357

if.then24.i:                                      ; preds = %land.end.i
  store i1 true, ptr @add_scan_area.__already_done, align 1
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then24.i, %land.end.i
  %flags38.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %flags38.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags38.i, align 4
  %or39.i = or i32 %3, 8
  store i32 %or39.i, ptr %flags38.i, align 4
  br label %do.body64.i

if.end40.i:                                       ; preds = %do.body11.i
  %cmp41.i = icmp eq i32 %size, -1
  br i1 %cmp41.i, label %if.then43.i, label %if.else.i

if.then43.i:                                      ; preds = %if.end40.i
  %pointer.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pointer.i, align 4
  %size44.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %size44.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size44.i, align 4
  %add.i = sub i32 %5, %0
  %sub.i = add i32 %add.i, %7
  br label %if.end61.i

if.else.i:                                        ; preds = %if.end40.i
  %add45.i = add i32 %0, %size
  %pointer46.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %pointer46.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pointer46.i, align 4
  %size47.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %size47.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size47.i, align 4
  %add48.i = add i32 %11, %9
  %cmp49.i = icmp ugt i32 %add45.i, %add48.i
  br i1 %cmp49.i, label %do.end55.i, label %if.end61.i

do.end55.i:                                       ; preds = %if.else.i
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %0) #16
  tail call void @dump_stack() #16
  tail call fastcc void @dump_object_info(ptr noundef nonnull %call.i) #14
  %12 = load ptr, ptr @scan_area_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %call9.i) #14
  br label %do.body64.i

if.end61.i:                                       ; preds = %if.else.i, %if.then43.i
  %size.addr.0.i = phi i32 [ %sub.i, %if.then43.i ], [ %size, %if.else.i ]
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i, align 4
  %start.i = getelementptr inbounds %struct.kmemleak_scan_area, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %0, ptr %start.i, align 8
  %size62.i = getelementptr inbounds %struct.kmemleak_scan_area, ptr %call9.i, i32 0, i32 2
  %15 = ptrtoint ptr %size62.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size.addr.0.i, ptr %size62.i, align 4
  %area_list.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 13
  %16 = ptrtoint ptr %area_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area_list.i, align 4
  %18 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %call9.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %hlist_add_head.exit.i, label %do.body12.i.i

do.body12.i.i:                                    ; preds = %if.end61.i
  %pprev.i99.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i99.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call9.i, ptr %pprev.i99.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end61.i
  %20 = ptrtoint ptr %area_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call9.i, ptr %area_list.i, align 4
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %area_list.i, ptr %pprev.i.i, align 4
  br label %do.body64.i

do.body64.i:                                      ; preds = %hlist_add_head.exit.i, %do.end55.i, %if.end30.i
  %call13105.i = phi i32 [ %call13106.i, %if.end30.i ], [ %call13.i, %do.end55.i ], [ %call13.i, %hlist_add_head.exit.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i, i32 noundef %call13105.i) #14
  tail call fastcc void @put_object(ptr noundef nonnull %call.i) #14
  br label %if.end10

if.end10:                                         ; preds = %do.body64.i, %do.end.i, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_no_scan(ptr noundef %ptr) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmemleak_no_scan.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmemleak_no_scan, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !356

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kmemleak_no_scan.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18, ptr noundef %ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b = load i1, ptr @kmemleak_enabled, align 4
  %tobool4.not = icmp eq ptr %ptr, null
  %or.cond = or i1 %tobool4.not, %.b
  %cmp.i = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %or.cond13 = or i1 %cmp.i, %or.cond
  br i1 %or.cond13, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  %0 = ptrtoint ptr %ptr to i32
  %call.i = tail call fastcc ptr @find_and_get_object(i32 noundef %0, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body5.i

do.end.i:                                         ; preds = %if.then7
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %0) #16
  tail call void @dump_stack() #16
  br label %if.end8

do.body5.i:                                       ; preds = %if.then7
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #14
  %flags10.i = getelementptr inbounds %struct.kmemleak_object, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags10.i, align 4
  %or.i = or i32 %2, 4
  store i32 %or.i, ptr %flags10.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i, i32 noundef %call7.i) #14
  tail call fastcc void @put_object(ptr noundef nonnull %call.i) #14
  br label %if.end8

if.end8:                                          ; preds = %do.body5.i, %do.end.i, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_alloc_phys(i32 noundef %phys, i32 noundef %size, i32 noundef %min_count, i32 noundef %gfp) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %phys, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %0 = load i32, ptr @max_low_pfn, align 4
  %cmp = icmp ult i32 %shr, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %phys, i32 -2130706432, i32 8454144) #18, !srcloc !370
  %2 = inttoptr i32 %1 to ptr
  tail call void @kmemleak_alloc(ptr noundef %2, i32 noundef %size, i32 noundef %min_count, i32 noundef %gfp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_free_part_phys(i32 noundef %phys, i32 noundef %size) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %phys, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %0 = load i32, ptr @max_low_pfn, align 4
  %cmp = icmp ult i32 %shr, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %phys, i32 -2130706432, i32 8454144) #18, !srcloc !370
  %2 = inttoptr i32 %1 to ptr
  tail call void @kmemleak_free_part(ptr noundef %2, i32 noundef %size)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_not_leak_phys(i32 noundef %phys) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %phys, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %0 = load i32, ptr @max_low_pfn, align 4
  %cmp = icmp ult i32 %shr, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %phys, i32 -2130706432, i32 8454144) #18, !srcloc !370
  %2 = inttoptr i32 %1 to ptr
  tail call void @kmemleak_not_leak(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_ignore_phys(i32 noundef %phys) #0 section ".ref.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %phys, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %0 = load i32, ptr @max_low_pfn, align 4
  %cmp = icmp ult i32 %shr, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %phys, i32 -2130706432, i32 8454144) #18, !srcloc !370
  %2 = inttoptr i32 %1 to ptr
  tail call void @kmemleak_ignore(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmemleak_boot_config(ptr noundef readonly %str) #5 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(4) @.str.73) #19
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  tail call fastcc void @kmemleak_disable()
  br label %return

if.else:                                          ; preds = %if.end
  %call2 = tail call i32 @strcmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(3) @.str.74) #19
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %return

if.then4:                                         ; preds = %if.else
  store i1 true, ptr @kmemleak_skip_disable, align 4
  br label %return

return:                                           ; preds = %if.then4, %if.else, %if.then1, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.else ], [ 0, %if.then4 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kmemleak_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @kmemleak_skip_disable, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @kmemleak_disable()
  br label %if.end11

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @kmemleak_error, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end3, label %if.end11

if.end3:                                          ; preds = %if.end
  store i1 true, ptr @jiffies_min_age, align 4
  store i32 60000, ptr @jiffies_scan_wait, align 4
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.19, i32 noundef 208, i32 noundef 4, i32 noundef 8388608, ptr noundef null) #14
  store ptr %call5, ptr @object_cache, align 4
  %call6 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.17, i32 noundef 16, i32 noundef 4, i32 noundef 8388608, ptr noundef null) #14
  store ptr %call6, ptr @scan_area_cache, align 4
  tail call fastcc void @create_object(i32 noundef ptrtoint (ptr @_sdata to i32), i32 noundef sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)), i32 noundef 0, i32 noundef 2592)
  tail call fastcc void @create_object(i32 noundef ptrtoint (ptr @__bss_start to i32), i32 noundef sub (i32 ptrtoint (ptr @__bss_stop to i32), i32 ptrtoint (ptr @__bss_start to i32)), i32 noundef 0, i32 noundef 2592)
  br i1 or (i1 icmp ult (ptr @__start_ro_after_init, ptr @_sdata), i1 icmp ugt (ptr @__end_ro_after_init, ptr @_edata)), label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end3
  tail call fastcc void @create_object(i32 noundef ptrtoint (ptr @__start_ro_after_init to i32), i32 noundef sub (i32 ptrtoint (ptr @__end_ro_after_init to i32), i32 ptrtoint (ptr @__start_ro_after_init to i32)), i32 noundef 0, i32 noundef 2592)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end3, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kmemleak_disable() unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmemleak_error, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @llvm.prefetch.p0(ptr nonnull @kmemleak_error, i32 1, i32 3, i32 1) #14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @kmemleak_error, i32 0, i32 1) #14, !srcloc !359
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !360
  %tobool.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %__cmpxchg.exit
  store i1 true, ptr @kmemleak_enabled, align 4
  %.b = load i1, ptr @kmemleak_initialized, align 4
  br i1 %.b, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @cleanup_work) #14
  br label %do.end21

if.else:                                          ; preds = %if.end
  store i1 true, ptr @kmemleak_free_enabled, align 4
  br label %do.end21

do.end21:                                         ; preds = %if.else, %if.then16
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %return

return:                                           ; preds = %do.end21, %__cmpxchg.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmemleak_late_init() #5 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @kmemleak_initialized, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 420, ptr noundef null, ptr noundef null, ptr noundef nonnull @kmemleak_fops) #14
  %0 = load i32, ptr @kmemleak_error, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @cleanup_work) #14
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @scan_mutex, i32 noundef 0) #14
  tail call fastcc void @start_scan_thread()
  tail call void @mutex_unlock(ptr noundef nonnull @scan_mutex) #14
  %2 = load i32, ptr @mem_pool_free_count, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %2) #16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kfence_ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_object_info(ptr noundef %object) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %pointer = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 7
  %0 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pointer, align 4
  %size = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 8
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %1, i32 noundef %3) #16
  %comm = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 18
  %pid = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 17
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %jiffies = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 16
  %6 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jiffies, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %comm, i32 noundef %5, i32 noundef %7) #16
  %min_count = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 10
  %8 = ptrtoint ptr %min_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_count, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %9) #16
  %count = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 11
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %11) #16
  %flags = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %13) #16
  %checksum = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 12
  %14 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %checksum, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %15) #16
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  %trace = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 14
  %trace_len = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 15
  %16 = ptrtoint ptr %trace_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trace_len, align 4
  tail call void @stack_trace_print(ptr noundef %trace, i32 noundef %17, i32 noundef 4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_trace_print(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_and_remove_object(i32 noundef %ptr, i32 noundef %alias) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kmemleak_lock) #14
  %0 = inttoptr i32 %ptr to ptr
  %rb.039.i = load ptr, ptr @object_tree_root, align 4
  %tobool.not40.i = icmp eq ptr %rb.039.i, null
  br i1 %tobool.not40.i, label %do.body2, label %while.body.i

while.body.i:                                     ; preds = %cleanup.i, %entry
  %rb.041.i = phi ptr [ %rb.0.i, %cleanup.i ], [ %rb.039.i, %entry ]
  %pointer.i = getelementptr i8, ptr %rb.041.i, i32 24
  %1 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pointer.i, align 4
  %3 = inttoptr i32 %2 to ptr
  %cmp.i = icmp ult ptr %0, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %size.i = getelementptr i8, ptr %rb.041.i, i32 28
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %add.i = add i32 %5, %2
  %cmp2.not.i = icmp ugt i32 %add.i, %ptr
  br i1 %cmp2.not.i, label %if.else5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i, i32 0, i32 1
  br label %cleanup.i

if.else5.i:                                       ; preds = %if.else.i
  %6 = inttoptr i32 %2 to ptr
  %add.ptr.le.i = getelementptr i8, ptr %rb.041.i, i32 -64
  %cmp6.i = icmp ne ptr %6, %0
  %tobool7.not.i = icmp eq i32 %alias, 0
  %or.cond.i = and i1 %tobool7.not.i, %cmp6.i
  br i1 %or.cond.i, label %cleanup.thread34.i, label %lookup_object.exit

cleanup.thread34.i:                               ; preds = %if.else5.i
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %ptr) #16
  tail call void @dump_stack() #16
  tail call fastcc void @dump_object_info(ptr noundef %add.ptr.le.i) #14
  br label %do.body2

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %rb.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %7 = ptrtoint ptr %rb.1.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %rb.0.i = load ptr, ptr %rb.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %rb.0.i, null
  br i1 %tobool.not.i, label %do.body2, label %while.body.i

lookup_object.exit:                               ; preds = %if.else5.i
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %lookup_object.exit
  tail call void @rb_erase(ptr noundef nonnull %rb.041.i, ptr noundef nonnull @object_tree_root) #14
  %object_list.i = getelementptr i8, ptr %rb.041.i, i32 -16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %object_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__remove_object.exit

if.end.i.i.i:                                     ; preds = %if.then
  %prev.i.i.i = getelementptr i8, ptr %rb.041.i, i32 -12
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %object_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %object_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__remove_object.exit

__remove_object.exit:                             ; preds = %if.end.i.i.i, %if.then
  %prev.i.i = getelementptr i8, ptr %rb.041.i, i32 -12
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %do.body2

do.body2:                                         ; preds = %__remove_object.exit, %lookup_object.exit, %cleanup.i, %cleanup.thread34.i, %entry
  %retval.2.i14 = phi ptr [ null, %lookup_object.exit ], [ %add.ptr.le.i, %__remove_object.exit ], [ null, %cleanup.thread34.i ], [ null, %entry ], [ null, %cleanup.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call) #14
  ret ptr %retval.2.i14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__delete_object(ptr noundef %object) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !371

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 672, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %use_count = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count, i32 noundef 4) #14
  %2 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %use_count, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.end38, label %if.end44, !prof !371

do.end38:                                         ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 673, i32 noundef 9, ptr noundef null) #14
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %object) #14
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 4
  %and59 = and i32 %5, -2
  store i32 %and59, ptr %flags1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %object, i32 noundef %call55) #14
  tail call fastcc void @put_object(ptr noundef %object)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_object_rcu(ptr noundef %rcu) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %area_list = getelementptr i8, ptr %rcu, i32 36
  %0 = ptrtoint ptr %area_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area_list, align 4
  %tobool6.not27 = icmp eq ptr %1, null
  br i1 %tobool6.not27, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pprev2.i.i29 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i29, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i30 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i30, label %for.end.loopexit.critedge, label %do.body13.i.i

do.body13.i.i:                                    ; preds = %do.body13.i.i, %land.rhs.preheader
  %7 = phi ptr [ %16, %do.body13.i.i ], [ %5, %land.rhs.preheader ]
  %pprev2.i.i32 = phi ptr [ %pprev2.i.i, %do.body13.i.i ], [ %pprev2.i.i29, %land.rhs.preheader ]
  %8 = phi ptr [ %14, %do.body13.i.i ], [ %3, %land.rhs.preheader ]
  %area.02831 = phi ptr [ %8, %do.body13.i.i ], [ %1, %land.rhs.preheader ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  %10 = ptrtoint ptr %area.02831 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %area.02831, align 4
  %11 = ptrtoint ptr %pprev2.i.i32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i32, align 4
  %12 = load ptr, ptr @scan_area_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %area.02831) #14
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev2.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %14, ptr %16, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.end.loopexit.critedge, label %do.body13.i.i

for.end.loopexit.critedge:                        ; preds = %do.body13.i.i, %land.rhs.preheader
  %area.028.lcssa = phi ptr [ %1, %land.rhs.preheader ], [ %8, %do.body13.i.i ]
  %pprev2.i.i.lcssa = phi ptr [ %pprev2.i.i29, %land.rhs.preheader ], [ %pprev2.i.i, %do.body13.i.i ]
  %18 = ptrtoint ptr %area.028.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %area.028.lcssa, align 4
  %19 = ptrtoint ptr %pprev2.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.lcssa, align 4
  %20 = load ptr, ptr @scan_area_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef nonnull %area.028.lcssa) #14
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.critedge, %entry
  %add.ptr = getelementptr i8, ptr %rcu, i32 -76
  %cmp.i = icmp uge ptr %add.ptr, @mem_pool
  %cmp1.not.i = icmp ult ptr %add.ptr, getelementptr inbounds ([16000 x %struct.kmemleak_object], ptr @mem_pool, i32 1, i32 0)
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  %21 = load ptr, ptr @object_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %add.ptr) #14
  br label %mem_pool_free.exit

do.body.i:                                        ; preds = %for.end
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kmemleak_lock) #14
  %object_list.i = getelementptr i8, ptr %rcu, i32 -28
  %22 = load ptr, ptr @mem_pool_free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %object_list.i, ptr noundef nonnull @mem_pool_free_list, ptr noundef %22) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %object_list.i, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %object_list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %object_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %rcu, i32 -24
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mem_pool_free_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %object_list.i, ptr @mem_pool_free_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call.i) #14
  br label %mem_pool_free.exit

mem_pool_free.exit:                               ; preds = %list_add.exit.i, %if.then.i
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmemleak_do_cleanup(ptr nocapture noundef readnone %work) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scan_thread, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %stop_scan_thread.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %0) #14
  store ptr null, ptr @scan_thread, align 4
  br label %stop_scan_thread.exit

stop_scan_thread.exit:                            ; preds = %if.then.i, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @scan_mutex, i32 noundef 0) #14
  store i1 true, ptr @kmemleak_free_enabled, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @scan_mutex) #14
  %.b1 = load i1, ptr @kmemleak_found_leaks, align 1
  br i1 %.b1, label %do.end, label %if.then

if.then:                                          ; preds = %stop_scan_thread.exit
  %1 = load ptr, ptr @object_list, align 4
  %cmp.not16.i = icmp eq ptr %1, @object_list
  br i1 %cmp.not16.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %__remove_object.exit.i, %if.then
  %.pn.in17.i = phi ptr [ %.pn.i, %__remove_object.exit.i ], [ %1, %if.then ]
  %object.0.i = getelementptr i8, ptr %.pn.in17.i, i32 -48
  %2 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in17.i, align 4
  %rb_node.i.i = getelementptr i8, ptr %.pn.in17.i, i32 16
  tail call void @rb_erase(ptr noundef %rb_node.i.i, ptr noundef nonnull @object_tree_root) #14
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__remove_object.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in17.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__remove_object.exit.i

__remove_object.exit.i:                           ; preds = %if.end.i.i.i.i, %for.body.i
  %prev.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call fastcc void @__delete_object(ptr noundef %object.0.i) #14
  %cmp.not.i = icmp eq ptr %.pn.i, @object_list
  br i1 %cmp.not.i, label %if.end, label %for.body.i

do.end:                                           ; preds = %stop_scan_thread.exit
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %__remove_object.exit.i, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_scan_thread() unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scan_thread, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.end9

if.end:                                           ; preds = %entry
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kmemleak_scan_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end4

if.end4:                                          ; preds = %if.end
  %call3 = tail call i32 @wake_up_process(ptr noundef %call) #14
  br label %if.end9.sink.split

do.end:                                           ; preds = %if.end
  store ptr %call, ptr @scan_thread, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #16
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %do.end, %if.end4
  %call.sink = phi ptr [ %call, %if.end4 ], [ null, %do.end ]
  store ptr %call.sink, ptr @scan_thread, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmemleak_write(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %size, ptr nocapture noundef %ppos) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [64 x i8], align 1
  %secs = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %1 = tail call i32 @llvm.umin.i32(i32 %size, i32 63)
  %call = call i32 @strncpy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %1) #14
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %cleanup89, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [64 x i8], ptr %buf, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %call2 = call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @scan_mutex, i32 noundef 0) #14
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %cleanup89, label %if.end5

if.end5:                                          ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.84, i32 5) #19
  %cmp8 = icmp eq i32 %bcmp, 0
  %.b103 = load i1, ptr @kmemleak_enabled, align 4
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  br i1 %.b103, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then9
  %3 = call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !362
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then10
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %rcu_read_lock.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i, %land.lhs.true.i.i, %if.then10
  %call.i = call i32 @rcu_read_lock_any_held() #14
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b45.i = load i1, ptr @kmemleak_clear.__warned, align 1
  br i1 %.b45.i, label %do.end.i, label %if.then.i112

if.then.i112:                                     ; preds = %land.lhs.true3.i
  store i1 true, ptr @kmemleak_clear.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1749, ptr noundef nonnull @.str.92) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i112, %land.lhs.true3.i, %land.lhs.true.i, %rcu_read_lock.exit.i
  %.pn59.i = load volatile ptr, ptr @object_list, align 4
  %cmp.not61.i = icmp eq ptr %.pn59.i, @object_list
  br i1 %cmp.not61.i, label %for.end.i, label %do.body9.i

do.body9.i:                                       ; preds = %do.body22.i, %do.end.i
  %.pn62.i = phi ptr [ %.pn.i, %do.body22.i ], [ %.pn59.i, %do.end.i ]
  %object.063.i = getelementptr i8, ptr %.pn62.i, i32 -48
  %call12.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %object.063.i) #14
  %flags15.i = getelementptr i8, ptr %.pn62.i, i32 -4
  %7 = ptrtoint ptr %flags15.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags15.i, align 4
  %and.i = and i32 %8, 2
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %do.body22.i, label %land.lhs.true17.i

land.lhs.true17.i:                                ; preds = %do.body9.i
  %count.i.i.i = getelementptr i8, ptr %.pn62.i, i32 56
  %9 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.not.i.i.i, label %do.body22.i, label %color_white.exit.i.i

color_white.exit.i.i:                             ; preds = %land.lhs.true17.i
  %min_count.i.i.i = getelementptr i8, ptr %.pn62.i, i32 52
  %11 = ptrtoint ptr %min_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_count.i.i.i, align 4
  %cmp2.i.i.i = icmp sge i32 %10, %12
  %and.i.i = and i32 %8, 1
  %tobool.not.i46.i = icmp eq i32 %and.i.i, 0
  %or.cond = select i1 %cmp2.i.i.i, i1 true, i1 %tobool.not.i46.i
  br i1 %or.cond, label %do.body22.i, label %unreferenced_object.exit.i

unreferenced_object.exit.i:                       ; preds = %color_white.exit.i.i
  %13 = load i32, ptr @jiffies_last_scan, align 4
  %jiffies.i.i = getelementptr i8, ptr %.pn62.i, i32 136
  %14 = ptrtoint ptr %jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jiffies.i.i, align 4
  %.b = load i1, ptr @jiffies_min_age, align 4
  %16 = select i1 %.b, i32 500, i32 0
  %17 = add i32 %15, %16
  %sub.i.i113 = sub i32 %13, %17
  %cmp.i.i = icmp sgt i32 %sub.i.i113, -1
  br i1 %cmp.i.i, label %if.then20.i, label %do.body22.i

if.then20.i:                                      ; preds = %unreferenced_object.exit.i
  %18 = ptrtoint ptr %min_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %min_count.i.i.i, align 4
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.then20.i, %unreferenced_object.exit.i, %color_white.exit.i.i, %land.lhs.true17.i, %do.body9.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %object.063.i, i32 noundef %call12.i) #14
  %19 = ptrtoint ptr %.pn62.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load volatile ptr, ptr %.pn62.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @object_list
  br i1 %cmp.not.i, label %for.end.i, label %do.body9.i

for.end.i:                                        ; preds = %do.body22.i, %do.end.i
  %call.i48.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i48.i, label %kmemleak_clear.exit, label %land.lhs.true.i51.i

land.lhs.true.i51.i:                              ; preds = %for.end.i
  %call1.i49.i = call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool.not.i50.i, label %kmemleak_clear.exit, label %land.lhs.true2.i53.i

land.lhs.true2.i53.i:                             ; preds = %land.lhs.true.i51.i
  %.b4.i52.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52.i, label %kmemleak_clear.exit, label %if.then.i54.i

if.then.i54.i:                                    ; preds = %land.lhs.true2.i53.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #14
  br label %kmemleak_clear.exit

kmemleak_clear.exit:                              ; preds = %if.then.i54.i, %land.lhs.true2.i53.i, %land.lhs.true.i51.i, %for.end.i
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %20 = call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i55.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i55.i to ptr
  %preempt_count.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i56.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i56.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  store i1 false, ptr @kmemleak_found_leaks, align 1
  br label %out

if.else:                                          ; preds = %if.then9
  %24 = load ptr, ptr @object_list, align 4
  %cmp.not16.i = icmp eq ptr %24, @object_list
  br i1 %cmp.not16.i, label %out.thread, label %for.body.i

for.body.i:                                       ; preds = %__remove_object.exit.i, %if.else
  %.pn.in17.i = phi ptr [ %.pn.i114, %__remove_object.exit.i ], [ %24, %if.else ]
  %object.0.i = getelementptr i8, ptr %.pn.in17.i, i32 -48
  %25 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i114 = load ptr, ptr %.pn.in17.i, align 4
  %rb_node.i.i = getelementptr i8, ptr %.pn.in17.i, i32 16
  call void @rb_erase(ptr noundef %rb_node.i.i, ptr noundef nonnull @object_tree_root) #14
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__remove_object.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i.i, align 4
  %28 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn.in17.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__remove_object.exit.i

__remove_object.exit.i:                           ; preds = %if.end.i.i.i.i, %for.body.i
  %prev.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call fastcc void @__delete_object(ptr noundef %object.0.i) #14
  %cmp.not.i115 = icmp eq ptr %.pn.i114, @object_list
  br i1 %cmp.not.i115, label %out, label %for.body.i

if.end12:                                         ; preds = %if.end5
  br i1 %.b103, label %out.thread134, label %if.end15

if.end15:                                         ; preds = %if.end12
  %bcmp104 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.73, i32 3) #19
  %cmp18 = icmp eq i32 %bcmp104, 0
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end15
  %call.i.i117 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kmemleak_error, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !358
  call void @llvm.prefetch.p0(ptr nonnull @kmemleak_error, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %if.then19
  %33 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @kmemleak_error, i32 0, i32 1) #14, !srcloc !359
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  %tobool.not.i.i118 = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i118, label %__cmpxchg.exit.i, label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %33, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !360
  %tobool.not.i119 = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool.not.i119, label %if.end.i120, label %out

if.end.i120:                                      ; preds = %__cmpxchg.exit.i
  store i1 true, ptr @kmemleak_enabled, align 4
  %.b.i = load i1, ptr @kmemleak_initialized, align 4
  br i1 %.b.i, label %if.then16.i, label %if.else.i121

if.then16.i:                                      ; preds = %if.end.i120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef nonnull @cleanup_work) #14
  br label %do.end21.i

if.else.i121:                                     ; preds = %if.end.i120
  store i1 true, ptr @kmemleak_free_enabled, align 4
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.else.i121, %if.then16.i
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %out

if.else20:                                        ; preds = %if.end15
  %bcmp105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.85, i32 8) #19
  %cmp23 = icmp eq i32 %bcmp105, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else20
  store i1 false, ptr @kmemleak_stack_scan, align 4
  br label %out.thread

if.else25:                                        ; preds = %if.else20
  %bcmp106 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.86, i32 9) #19
  %cmp28 = icmp eq i32 %bcmp106, 0
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else25
  store i1 true, ptr @kmemleak_stack_scan, align 4
  br label %out.thread

if.else30:                                        ; preds = %if.else25
  %bcmp107 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.87, i32 7) #19
  %cmp33 = icmp eq i32 %bcmp107, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else30
  call fastcc void @start_scan_thread()
  br label %out.thread

if.else35:                                        ; preds = %if.else30
  %bcmp108 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.88, i32 8) #19
  %cmp38 = icmp eq i32 %bcmp108, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else35
  %35 = load ptr, ptr @scan_thread, align 4
  %tobool.not.i122 = icmp eq ptr %35, null
  br i1 %tobool.not.i122, label %out.thread, label %if.then.i124

if.then.i124:                                     ; preds = %if.then39
  %call.i123 = call i32 @kthread_stop(ptr noundef nonnull %35) #14
  store ptr null, ptr @scan_thread, align 4
  br label %out.thread

if.else40:                                        ; preds = %if.else35
  %bcmp109 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.89, i32 5) #19
  %cmp43 = icmp eq i32 %bcmp109, 0
  br i1 %cmp43, label %if.then44, label %if.else64

if.then44:                                        ; preds = %if.else40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secs) #14
  %36 = ptrtoint ptr %secs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %secs, align 4, !annotation !372
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 5
  %call46 = call i32 @kstrtouint(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %secs) #14
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.then44
  %37 = ptrtoint ptr %secs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %secs, align 4
  %mul = mul i32 %38, 1000
  %39 = load ptr, ptr @scan_thread, align 4
  %tobool.not.i126 = icmp eq ptr %39, null
  br i1 %tobool.not.i126, label %stop_scan_thread.exit130, label %if.then.i128

if.then.i128:                                     ; preds = %if.end49
  %call.i127 = call i32 @kthread_stop(ptr noundef nonnull %39) #14
  store ptr null, ptr @scan_thread, align 4
  br label %stop_scan_thread.exit130

stop_scan_thread.exit130:                         ; preds = %if.then.i128, %if.end49
  %tobool53.not = icmp eq i32 %mul, 0
  br i1 %tobool53.not, label %cleanup, label %if.else.i

if.else.i:                                        ; preds = %stop_scan_thread.exit130
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #14
  store volatile i32 %call2.i, ptr @jiffies_scan_wait, align 4
  call fastcc void @start_scan_thread()
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %stop_scan_thread.exit130, %if.then44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secs) #14
  br label %out

if.else64:                                        ; preds = %if.else40
  %bcmp110 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.90, i32 4) #19
  %cmp67 = icmp eq i32 %bcmp110, 0
  br i1 %cmp67, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else64
  call fastcc void @kmemleak_scan()
  br label %out.thread

if.else69:                                        ; preds = %if.else64
  %bcmp111 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.91, i32 5) #19
  %cmp72 = icmp eq i32 %bcmp111, 0
  br i1 %cmp72, label %if.then73, label %out.thread134

if.then73:                                        ; preds = %if.else69
  %add.ptr75 = getelementptr inbounds i8, ptr %buf, i32 5
  %call76 = call fastcc i32 @dump_str_object_info(ptr noundef %add.ptr75)
  br label %out

out.thread:                                       ; preds = %if.then68, %if.then.i124, %if.then39, %if.then34, %if.then29, %if.then24, %if.else
  call void @mutex_unlock(ptr noundef nonnull @scan_mutex) #14
  br label %if.end88

out.thread134:                                    ; preds = %if.else69, %if.end12
  %ret.0.ph = phi i32 [ -22, %if.else69 ], [ -1, %if.end12 ]
  call void @mutex_unlock(ptr noundef nonnull @scan_mutex) #14
  br label %cleanup89

out:                                              ; preds = %if.then73, %cleanup, %do.end21.i, %__cmpxchg.exit.i, %__remove_object.exit.i, %kmemleak_clear.exit
  %ret.0 = phi i32 [ %call2, %kmemleak_clear.exit ], [ %call46, %cleanup ], [ %call76, %if.then73 ], [ %call2, %__cmpxchg.exit.i ], [ %call2, %do.end21.i ], [ %call2, %__remove_object.exit.i ]
  call void @mutex_unlock(ptr noundef nonnull @scan_mutex) #14
  %cmp86 = icmp slt i32 %ret.0, 0
  br i1 %cmp86, label %cleanup89, label %if.end88

if.end88:                                         ; preds = %out, %out.thread
  %conv = zext i32 %size to i64
  %40 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ppos, align 8
  %add = add i64 %41, %conv
  store i64 %add, ptr %ppos, align 8
  br label %cleanup89

cleanup89:                                        ; preds = %if.end88, %out, %out.thread134, %if.end, %entry
  %retval.0 = phi i32 [ %size, %if.end88 ], [ -14, %entry ], [ %call2, %if.end ], [ %ret.0, %out ], [ %ret.0.ph, %out.thread134 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmemleak_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @kmemleak_seq_ops) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kmemleak_scan() unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  store i32 %0, ptr @jiffies_last_scan, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !362
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  %call = tail call i32 @rcu_read_lock_any_held() #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b357367 = load i1, ptr @kmemleak_scan.__warned, align 1
  br i1 %.b357367, label %do.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  store i1 true, ptr @kmemleak_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1421, ptr noundef nonnull @.str.92) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %rcu_read_lock.exit
  %.pn485 = load volatile ptr, ptr @object_list, align 4
  %cmp.not487 = icmp eq ptr %.pn485, @object_list
  br i1 %cmp.not487, label %for.end, label %do.body9

do.body9:                                         ; preds = %do.body22, %do.end
  %.pn488 = phi ptr [ %.pn, %do.body22 ], [ %.pn485, %do.end ]
  %object.0489 = getelementptr i8, ptr %.pn488, i32 -48
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %object.0489) #14
  %count = getelementptr i8, ptr %.pn488, i32 56
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %count, align 4
  %min_count.i = getelementptr i8, ptr %.pn488, i32 52
  %6 = ptrtoint ptr %min_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_count.i, align 4
  %cmp.not.i = icmp eq i32 %7, -1
  br i1 %cmp.not.i, label %do.body22, label %color_gray.exit

color_gray.exit:                                  ; preds = %do.body9
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %cmp2.i.not = icmp slt i32 %9, %7
  br i1 %cmp2.i.not, label %do.body22, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %color_gray.exit
  %use_count.i = getelementptr i8, ptr %.pn488, i32 36
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %use_count.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %use_count.i, ptr %use_count.i, i32 0, i32 1, ptr elementtype(i32) %use_count.i) #14, !srcloc !364
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.body22, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !365
  %gray_list = getelementptr i8, ptr %.pn488, i32 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gray_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %gray_list, ptr noundef %11, ptr noundef nonnull @gray_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.body22

if.end.i.i:                                       ; preds = %if.then20
  store ptr %gray_list, ptr getelementptr inbounds (%struct.list_head, ptr @gray_list, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %gray_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gray_list, ptr %gray_list, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn488, i32 12
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %gray_list, ptr %11, align 4
  br label %do.body22

do.body22:                                        ; preds = %if.end.i.i, %if.then20, %land.lhs.true17, %color_gray.exit, %do.body9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %object.0489, i32 noundef %call12) #14
  %15 = ptrtoint ptr %.pn488 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load volatile ptr, ptr %.pn488, align 4
  %cmp.not = icmp eq ptr %.pn, @object_list
  br i1 %cmp.not, label %for.end, label %do.body9

for.end:                                          ; preds = %do.body22, %do.end
  %call.i401 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i401, label %rcu_read_unlock.exit, label %land.lhs.true.i404

land.lhs.true.i404:                               ; preds = %for.end
  %call1.i402 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i403 = icmp eq i32 %call1.i402, 0
  br i1 %tobool.not.i403, label %rcu_read_unlock.exit, label %land.lhs.true2.i406

land.lhs.true2.i406:                              ; preds = %land.lhs.true.i404
  %.b4.i405 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i405, label %rcu_read_unlock.exit, label %if.then.i407

if.then.i407:                                     ; preds = %land.lhs.true2.i406
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i407, %land.lhs.true2.i406, %land.lhs.true.i404, %for.end
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %16 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i408 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i408 to ptr
  %preempt_count.i.i.i.i409 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i409 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i409, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i409, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call40490 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp41491 = icmp ult i32 %call40490, %20
  br i1 %cmp41491, label %for.body43, label %for.end47

for.body43:                                       ; preds = %scan_large_block.exit, %rcu_read_unlock.exit
  %call40492 = phi i32 [ %call40, %scan_large_block.exit ], [ %call40490, %rcu_read_unlock.exit ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call40492
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add.ptr46 = getelementptr i8, ptr @__per_cpu_end, i32 %22
  br i1 icmp ult (ptr @__per_cpu_start, ptr @__per_cpu_end), label %while.body.i.preheader, label %scan_large_block.exit

while.body.i.preheader:                           ; preds = %for.body43
  %add.ptr44 = getelementptr i8, ptr @__per_cpu_start, i32 %22
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  %start.addr.010.i = phi ptr [ %add.ptr.i, %while.body.i ], [ %add.ptr44, %while.body.i.preheader ]
  %add.ptr.i = getelementptr i8, ptr %start.addr.010.i, i32 4096
  %cmp1.i = icmp ult ptr %add.ptr.i, %add.ptr46
  %add.ptr.end.i = select i1 %cmp1.i, ptr %add.ptr.i, ptr %add.ptr46
  tail call fastcc void @scan_block(ptr noundef %start.addr.010.i, ptr noundef %add.ptr.end.i, ptr noundef null) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1320, i32 noundef 0) #14
  %call.i.i410 = tail call i32 @__cond_resched() #14
  br i1 %cmp1.i, label %while.body.i, label %scan_large_block.exit

scan_large_block.exit:                            ; preds = %while.body.i, %for.body43
  %call40 = tail call i32 @cpumask_next(i32 noundef %call40492, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp41 = icmp ult i32 %call40, %23
  br i1 %cmp41, label %for.body43, label %for.end47

for.end47:                                        ; preds = %scan_large_block.exit, %rcu_read_unlock.exit
  %call48 = tail call ptr @first_online_pgdat() #14
  %tobool50.not496 = icmp eq ptr %call48, null
  br i1 %tobool50.not496, label %for.end89, label %for.body51

for.body51:                                       ; preds = %for.inc87, %for.end47
  %zone.0497 = phi ptr [ %call88, %for.inc87 ], [ %call48, %for.end47 ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.0497, i32 0, i32 13
  %24 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %present_pages.i, align 8
  %tobool.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.not, label %for.inc87, label %if.else

if.else:                                          ; preds = %for.body51
  %zone_start_pfn = getelementptr inbounds %struct.zone, ptr %zone.0497, i32 0, i32 10
  %26 = ptrtoint ptr %zone_start_pfn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %zone_start_pfn, align 4
  %spanned_pages.i = getelementptr inbounds %struct.zone, ptr %zone.0497, i32 0, i32 12
  %28 = ptrtoint ptr %spanned_pages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spanned_pages.i, align 4
  %add.i = add i32 %29, %27
  %cmp56493 = icmp ult i32 %27, %add.i
  br i1 %cmp56493, label %for.body58, label %for.inc87

for.body58:                                       ; preds = %cleanup, %if.else
  %pfn.0494 = phi i32 [ %inc, %cleanup ], [ %27, %if.else ]
  %call59 = tail call i32 @pfn_valid(i32 noundef %pfn.0494) #14
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup, label %if.end63

if.end63:                                         ; preds = %for.body58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.0494, %31
  %add.ptr62 = getelementptr %struct.page, ptr %30, i32 %sub
  %tobool65.not = icmp eq ptr %add.ptr62, null
  br i1 %tobool65.not, label %cleanup, label %if.end67

if.end67:                                         ; preds = %if.end63
  %32 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %add.ptr62, align 4
  %cmp.i.not.i.i = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !371

if.then.i.i:                                      ; preds = %if.end67
  tail call void @dump_page(ptr noundef nonnull %add.ptr62, ptr noundef nonnull @.str.98) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !373
  unreachable

page_zone.exit:                                   ; preds = %if.end67
  %shr.i.i = lshr i32 %33, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %cmp69.not = icmp eq ptr %arrayidx.i, %zone.0497
  br i1 %cmp69.not, label %if.end72, label %cleanup

if.end72:                                         ; preds = %page_zone.exit
  %34 = getelementptr %struct.page, ptr %30, i32 %sub, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i = and i32 %36, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i412, label %if.then.i.i411, !prof !357

if.then.i.i411:                                   ; preds = %if.end72
  %sub.i.i = add i32 %36, -1
  br label %page_count.exit

if.end.i.i412:                                    ; preds = %if.end72
  %37 = ptrtoint ptr %add.ptr62 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i412, %if.then.i.i411
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i411 ], [ %37, %if.end.i.i412 ]
  %38 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #14
  %39 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %cmp74 = icmp eq i32 %40, 0
  br i1 %cmp74, label %cleanup, label %if.end77

if.end77:                                         ; preds = %page_count.exit
  %add.ptr78 = getelementptr %struct.page, ptr %add.ptr62, i32 1
  tail call fastcc void @scan_block(ptr noundef nonnull %add.ptr62, ptr noundef %add.ptr78, ptr noundef null)
  %and = and i32 %pfn.0494, 63
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %if.then80, label %cleanup

if.then80:                                        ; preds = %if.end77
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1473, i32 noundef 0) #14
  %call.i413 = tail call i32 @__cond_resched() #14
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end77, %page_count.exit, %page_zone.exit, %if.end63, %for.body58
  %inc = add i32 %pfn.0494, 1
  %exitcond.not = icmp eq i32 %inc, %add.i
  br i1 %exitcond.not, label %for.inc87, label %for.body58

for.inc87:                                        ; preds = %cleanup, %if.else, %for.body51
  %call88 = tail call ptr @next_zone(ptr noundef nonnull %zone.0497) #14
  %tobool50.not = icmp eq ptr %call88, null
  br i1 %tobool50.not, label %for.end89, label %for.body51

for.end89:                                        ; preds = %for.inc87, %for.end47
  %.b = load i1, ptr @kmemleak_stack_scan, align 4
  br i1 %.b, label %if.end147, label %if.then91

if.then91:                                        ; preds = %for.end89
  %41 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i368 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i368 to ptr
  %preempt_count.i.i.i.i369 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i369, align 4
  %add.i.i.i370 = add i32 %44, 1
  store volatile i32 %add.i.i.i370, ptr %preempt_count.i.i.i.i369, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !362
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i371 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i371, label %rcu_read_lock.exit378, label %land.lhs.true.i374

land.lhs.true.i374:                               ; preds = %if.then91
  %call1.i372 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i373 = icmp eq i32 %call1.i372, 0
  br i1 %tobool.not.i373, label %rcu_read_lock.exit378, label %land.lhs.true2.i376

land.lhs.true2.i376:                              ; preds = %land.lhs.true.i374
  %.b4.i375 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i375, label %rcu_read_lock.exit378, label %if.then.i377

if.then.i377:                                     ; preds = %land.lhs.true2.i376
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #14
  br label %rcu_read_lock.exit378

rcu_read_lock.exit378:                            ; preds = %if.then.i377, %land.lhs.true2.i376, %land.lhs.true.i374, %if.then91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %45 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr100504 = getelementptr i8, ptr %45, i32 -1136
  %cmp101.not505 = icmp eq ptr %add.ptr100504, @init_task
  br i1 %cmp101.not505, label %for.end146, label %do.body104

for.cond92.loopexit:                              ; preds = %if.end134, %do.end115
  %46 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %48, align 16
  %add.ptr100 = getelementptr i8, ptr %47, i32 -1136
  %cmp101.not = icmp eq ptr %add.ptr100, @init_task
  br i1 %cmp101.not, label %for.end146, label %do.body104

do.body104:                                       ; preds = %for.cond92.loopexit, %rcu_read_lock.exit378
  %48 = phi ptr [ %47, %for.cond92.loopexit ], [ %45, %rcu_read_lock.exit378 ]
  %call105 = tail call i32 @rcu_read_lock_any_held() #14
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %land.lhs.true107, label %do.end115

land.lhs.true107:                                 ; preds = %do.body104
  %call108 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %do.end115, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %land.lhs.true107
  %.b358366 = load i1, ptr @kmemleak_scan.__warned.93, align 1
  br i1 %.b358366, label %do.end115, label %if.then112

if.then112:                                       ; preds = %land.lhs.true110
  store i1 true, ptr @kmemleak_scan.__warned.93, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1485, ptr noundef nonnull @.str.92) #14
  br label %do.end115

do.end115:                                        ; preds = %if.then112, %land.lhs.true110, %land.lhs.true107, %do.body104
  %signal = getelementptr i8, ptr %48, i32 544
  %49 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn365500 = load volatile ptr, ptr %thread_head, align 4
  %cmp127.not502 = icmp eq ptr %.pn365500, %thread_head
  br i1 %cmp127.not502, label %for.cond92.loopexit, label %for.body129

for.body129:                                      ; preds = %if.end134, %do.end115
  %.pn365503 = phi ptr [ %.pn365, %if.end134 ], [ %.pn365500, %do.end115 ]
  %stack.i = getelementptr i8, ptr %.pn365503, i32 -1400
  %52 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stack.i, align 4
  %tobool131.not = icmp eq ptr %53, null
  br i1 %tobool131.not, label %if.end134, label %if.then132

if.then132:                                       ; preds = %for.body129
  %add.ptr133 = getelementptr i8, ptr %53, i32 16384
  tail call fastcc void @scan_block(ptr noundef nonnull %53, ptr noundef %add.ptr133, ptr noundef null)
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %for.body129
  %54 = ptrtoint ptr %.pn365503 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn365 = load volatile ptr, ptr %.pn365503, align 4
  %55 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %signal, align 16
  %thread_head126 = getelementptr inbounds %struct.signal_struct, ptr %56, i32 0, i32 3
  %cmp127.not = icmp eq ptr %.pn365, %thread_head126
  br i1 %cmp127.not, label %for.cond92.loopexit, label %for.body129

for.end146:                                       ; preds = %for.cond92.loopexit, %rcu_read_lock.exit378
  %call.i414 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i414, label %rcu_read_unlock.exit424, label %land.lhs.true.i417

land.lhs.true.i417:                               ; preds = %for.end146
  %call1.i415 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i416 = icmp eq i32 %call1.i415, 0
  br i1 %tobool.not.i416, label %rcu_read_unlock.exit424, label %land.lhs.true2.i419

land.lhs.true2.i419:                              ; preds = %land.lhs.true.i417
  %.b4.i418 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i418, label %rcu_read_unlock.exit424, label %if.then.i420

if.then.i420:                                     ; preds = %land.lhs.true2.i419
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #14
  br label %rcu_read_unlock.exit424

rcu_read_unlock.exit424:                          ; preds = %if.then.i420, %land.lhs.true2.i419, %land.lhs.true.i417, %for.end146
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %57 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i421 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i421 to ptr
  %preempt_count.i.i.i.i422 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i422 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i422, align 4
  %sub.i.i.i423 = add i32 %60, -1
  store volatile i32 %sub.i.i.i423, ptr %preempt_count.i.i.i.i422, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end147

if.end147:                                        ; preds = %rcu_read_unlock.exit424, %for.end89
  tail call fastcc void @scan_gray_list()
  %61 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i379 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i379 to ptr
  %preempt_count.i.i.i.i380 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i380 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i380, align 4
  %add.i.i.i381 = add i32 %64, 1
  store volatile i32 %add.i.i.i381, ptr %preempt_count.i.i.i.i380, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !362
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i382 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i382, label %rcu_read_lock.exit389, label %land.lhs.true.i385

land.lhs.true.i385:                               ; preds = %if.end147
  %call1.i383 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i384 = icmp eq i32 %call1.i383, 0
  br i1 %tobool.not.i384, label %rcu_read_lock.exit389, label %land.lhs.true2.i387

land.lhs.true2.i387:                              ; preds = %land.lhs.true.i385
  %.b4.i386 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i386, label %rcu_read_lock.exit389, label %if.then.i388

if.then.i388:                                     ; preds = %land.lhs.true2.i387
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #14
  br label %rcu_read_lock.exit389

rcu_read_lock.exit389:                            ; preds = %if.then.i388, %land.lhs.true2.i387, %land.lhs.true.i385, %if.end147
  %call149 = tail call i32 @rcu_read_lock_any_held() #14
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true151, label %do.end159

land.lhs.true151:                                 ; preds = %rcu_read_lock.exit389
  %call152 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %do.end159, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %land.lhs.true151
  %.b359364 = load i1, ptr @kmemleak_scan.__warned.94, align 1
  br i1 %.b359364, label %do.end159, label %if.then156

if.then156:                                       ; preds = %land.lhs.true154
  store i1 true, ptr @kmemleak_scan.__warned.94, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1506, ptr noundef nonnull @.str.92) #14
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %land.lhs.true154, %land.lhs.true151, %rcu_read_lock.exit389
  %.pn361507 = load volatile ptr, ptr @object_list, align 4
  %cmp169.not509 = icmp eq ptr %.pn361507, @object_list
  br i1 %cmp169.not509, label %for.end217, label %do.body172

do.body172:                                       ; preds = %do.body198, %do.end159
  %.pn361510 = phi ptr [ %.pn361, %do.body198 ], [ %.pn361507, %do.end159 ]
  %object.1511 = getelementptr i8, ptr %.pn361510, i32 -48
  %call179 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %object.1511) #14
  %count.i425 = getelementptr i8, ptr %.pn361510, i32 56
  %65 = ptrtoint ptr %count.i425 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i425, align 4
  %cmp.not.i426 = icmp eq i32 %66, -1
  br i1 %cmp.not.i426, label %do.body198, label %color_white.exit

color_white.exit:                                 ; preds = %do.body172
  %min_count.i427 = getelementptr i8, ptr %.pn361510, i32 52
  %67 = ptrtoint ptr %min_count.i427 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %min_count.i427, align 4
  %cmp2.i428 = icmp slt i32 %66, %68
  br i1 %cmp2.i428, label %land.lhs.true184, label %do.body198

land.lhs.true184:                                 ; preds = %color_white.exit
  %flags185 = getelementptr i8, ptr %.pn361510, i32 -4
  %69 = ptrtoint ptr %flags185 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags185, align 4
  %and186 = and i32 %70, 1
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %do.body198, label %land.lhs.true188

land.lhs.true188:                                 ; preds = %land.lhs.true184
  %checksum.i = getelementptr i8, ptr %.pn361510, i32 60
  %71 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %checksum.i, align 4
  tail call void @kasan_disable_current() #14
  %pointer.i = getelementptr i8, ptr %.pn361510, i32 40
  %73 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pointer.i, align 4
  %75 = inttoptr i32 %74 to ptr
  %size.i = getelementptr i8, ptr %.pn361510, i32 44
  %76 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size.i, align 4
  %call1.i430 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %75, i32 noundef %77) #17
  %78 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call1.i430, ptr %checksum.i, align 4
  tail call void @kasan_enable_current() #14
  %79 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %checksum.i, align 4
  %cmp.i.not = icmp eq i32 %80, %72
  br i1 %cmp.i.not, label %do.body198, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %land.lhs.true188
  %use_count.i431 = getelementptr i8, ptr %.pn361510, i32 36
  %call.i.i.i432 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count.i431, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %use_count.i431, i32 1, i32 3, i32 1) #14
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %use_count.i431, ptr %use_count.i431, i32 0, i32 1, ptr elementtype(i32) %use_count.i431) #14, !srcloc !364
  %asmresult.i.i.i.i.i433 = extractvalue { i32, i32, i32 } %81, 0
  %cmp.not.i.i.i.i.i434 = icmp eq i32 %asmresult.i.i.i.i.i433, 0
  br i1 %cmp.not.i.i.i.i.i434, label %do.body198, label %if.then194

if.then194:                                       ; preds = %land.lhs.true191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !365
  %82 = ptrtoint ptr %min_count.i427 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %min_count.i427, align 4
  %84 = ptrtoint ptr %count.i425 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %count.i425, align 4
  %gray_list196 = getelementptr i8, ptr %.pn361510, i32 8
  %85 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gray_list, i32 0, i32 1), align 4
  %call.i.i439 = tail call zeroext i1 @__list_add_valid(ptr noundef %gray_list196, ptr noundef %85, ptr noundef nonnull @gray_list) #14
  br i1 %call.i.i439, label %if.end.i.i441, label %do.body198

if.end.i.i441:                                    ; preds = %if.then194
  store ptr %gray_list196, ptr getelementptr inbounds (%struct.list_head, ptr @gray_list, i32 0, i32 1), align 4
  %86 = ptrtoint ptr %gray_list196 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @gray_list, ptr %gray_list196, align 4
  %prev3.i.i440 = getelementptr i8, ptr %.pn361510, i32 12
  %87 = ptrtoint ptr %prev3.i.i440 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %85, ptr %prev3.i.i440, align 4
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %gray_list196, ptr %85, align 4
  br label %do.body198

do.body198:                                       ; preds = %if.end.i.i441, %if.then194, %land.lhs.true191, %land.lhs.true188, %land.lhs.true184, %color_white.exit, %do.body172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %object.1511, i32 noundef %call179) #14
  %89 = ptrtoint ptr %.pn361510 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn361 = load volatile ptr, ptr %.pn361510, align 4
  %cmp169.not = icmp eq ptr %.pn361, @object_list
  br i1 %cmp169.not, label %for.end217, label %do.body172

for.end217:                                       ; preds = %do.body198, %do.end159
  %call.i443 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i443, label %rcu_read_unlock.exit453, label %land.lhs.true.i446

land.lhs.true.i446:                               ; preds = %for.end217
  %call1.i444 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i445 = icmp eq i32 %call1.i444, 0
  br i1 %tobool.not.i445, label %rcu_read_unlock.exit453, label %land.lhs.true2.i448

land.lhs.true2.i448:                              ; preds = %land.lhs.true.i446
  %.b4.i447 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i447, label %rcu_read_unlock.exit453, label %if.then.i449

if.then.i449:                                     ; preds = %land.lhs.true2.i448
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #14
  br label %rcu_read_unlock.exit453

rcu_read_unlock.exit453:                          ; preds = %if.then.i449, %land.lhs.true2.i448, %land.lhs.true.i446, %for.end217
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %90 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i450 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i450 to ptr
  %preempt_count.i.i.i.i451 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i451 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i451, align 4
  %sub.i.i.i452 = add i32 %93, -1
  store volatile i32 %sub.i.i.i452, ptr %preempt_count.i.i.i.i451, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call fastcc void @scan_gray_list()
  %.b.i = load i1, ptr @kmemleak_enabled, align 4
  br i1 %.b.i, label %cleanup297, label %if.end.i

if.end.i:                                         ; preds = %rcu_read_unlock.exit453
  %94 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i454 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i454 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 53
  %98 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mm.i, align 8
  %tobool1.not.i = icmp eq ptr %99, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 1
  %100 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stack.i.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %104 = and i32 %103, 256
  %tobool.not.i.i455 = icmp eq i32 %104, 0
  br i1 %tobool.not.i.i455, label %if.end.i.i456, label %cleanup297, !prof !357

if.end.i.i456:                                    ; preds = %if.then2.i
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %101, align 4
  %and1.i.i.i.i.i.i = and i32 %106, 1
  br label %scan_should_stop.exit

if.else.i:                                        ; preds = %if.end.i
  %call6.i = tail call zeroext i1 @kthread_should_stop() #14
  %conv.i457 = zext i1 %call6.i to i32
  br label %scan_should_stop.exit

scan_should_stop.exit:                            ; preds = %if.else.i, %if.end.i.i456
  %retval.0.i = phi i32 [ %conv.i457, %if.else.i ], [ %and1.i.i.i.i.i.i, %if.end.i.i456 ]
  %tobool219.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool219.not, label %if.end221, label %cleanup297

if.end221:                                        ; preds = %scan_should_stop.exit
  %107 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i390 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i390 to ptr
  %preempt_count.i.i.i.i391 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i.i391 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i.i391, align 4
  %add.i.i.i392 = add i32 %110, 1
  store volatile i32 %add.i.i.i392, ptr %preempt_count.i.i.i.i391, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !362
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i393 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i393, label %rcu_read_lock.exit400, label %land.lhs.true.i396

land.lhs.true.i396:                               ; preds = %if.end221
  %call1.i394 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i395 = icmp eq i32 %call1.i394, 0
  br i1 %tobool.not.i395, label %rcu_read_lock.exit400, label %land.lhs.true2.i398

land.lhs.true2.i398:                              ; preds = %land.lhs.true.i396
  %.b4.i397 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i397, label %rcu_read_lock.exit400, label %if.then.i399

if.then.i399:                                     ; preds = %land.lhs.true2.i398
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #14
  br label %rcu_read_lock.exit400

rcu_read_lock.exit400:                            ; preds = %if.then.i399, %land.lhs.true2.i398, %land.lhs.true.i396, %if.end221
  %call223 = tail call i32 @rcu_read_lock_any_held() #14
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %land.lhs.true225, label %do.end233

land.lhs.true225:                                 ; preds = %rcu_read_lock.exit400
  %call226 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %do.end233, label %land.lhs.true228

land.lhs.true228:                                 ; preds = %land.lhs.true225
  %.b360363 = load i1, ptr @kmemleak_scan.__warned.95, align 1
  br i1 %.b360363, label %do.end233, label %if.then230

if.then230:                                       ; preds = %land.lhs.true228
  store i1 true, ptr @kmemleak_scan.__warned.95, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1533, ptr noundef nonnull @.str.92) #14
  br label %do.end233

do.end233:                                        ; preds = %if.then230, %land.lhs.true228, %land.lhs.true225, %rcu_read_lock.exit400
  %.pn362512 = load volatile ptr, ptr @object_list, align 4
  %cmp243.not514 = icmp eq ptr %.pn362512, @object_list
  br i1 %cmp243.not514, label %for.end288, label %do.body246

do.body246:                                       ; preds = %do.body269, %do.end233
  %.pn362516 = phi ptr [ %.pn362, %do.body269 ], [ %.pn362512, %do.end233 ]
  %new_leaks.0515 = phi i32 [ %new_leaks.1, %do.body269 ], [ 0, %do.end233 ]
  %object.2517 = getelementptr i8, ptr %.pn362516, i32 -48
  %call253 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %object.2517) #14
  %count.i.i = getelementptr i8, ptr %.pn362516, i32 56
  %111 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %112, -1
  br i1 %cmp.not.i.i, label %do.body269, label %color_white.exit.i

color_white.exit.i:                               ; preds = %do.body246
  %min_count.i.i = getelementptr i8, ptr %.pn362516, i32 52
  %113 = ptrtoint ptr %min_count.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %min_count.i.i, align 4
  %cmp2.i.i = icmp slt i32 %112, %114
  br i1 %cmp2.i.i, label %land.lhs.true.i459, label %do.body269

land.lhs.true.i459:                               ; preds = %color_white.exit.i
  %flags.i = getelementptr i8, ptr %.pn362516, i32 -4
  %115 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %116, 1
  %tobool.not.i458 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i458, label %do.body269, label %unreferenced_object.exit

unreferenced_object.exit:                         ; preds = %land.lhs.true.i459
  %117 = load i32, ptr @jiffies_last_scan, align 4
  %jiffies.i = getelementptr i8, ptr %.pn362516, i32 136
  %118 = ptrtoint ptr %jiffies.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %jiffies.i, align 4
  %.b520 = load i1, ptr @jiffies_min_age, align 4
  %120 = select i1 %.b520, i32 500, i32 0
  %121 = add i32 %119, %120
  %sub.i = sub i32 %117, %121
  %cmp.i460 = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i460, label %land.lhs.true258, label %do.body269

land.lhs.true258:                                 ; preds = %unreferenced_object.exit
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i, align 4
  %and260 = and i32 %123, 2
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.then262, label %do.body269

if.then262:                                       ; preds = %land.lhs.true258
  %or = or i32 %123, 2
  %124 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or, ptr %flags.i, align 4
  %125 = load i8, ptr @kmemleak_verbose, align 1, !range !374
  %tobool264.not = icmp eq i8 %125, 0
  br i1 %tobool264.not, label %if.end266, label %if.then265

if.then265:                                       ; preds = %if.then262
  tail call fastcc void @print_unreferenced(ptr noundef null, ptr noundef %object.2517)
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.then262
  %inc267 = add i32 %new_leaks.0515, 1
  br label %do.body269

do.body269:                                       ; preds = %if.end266, %land.lhs.true258, %unreferenced_object.exit, %land.lhs.true.i459, %color_white.exit.i, %do.body246
  %new_leaks.1 = phi i32 [ %new_leaks.0515, %land.lhs.true258 ], [ %inc267, %if.end266 ], [ %new_leaks.0515, %unreferenced_object.exit ], [ %new_leaks.0515, %land.lhs.true.i459 ], [ %new_leaks.0515, %color_white.exit.i ], [ %new_leaks.0515, %do.body246 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %object.2517, i32 noundef %call253) #14
  %126 = ptrtoint ptr %.pn362516 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn362 = load volatile ptr, ptr %.pn362516, align 4
  %cmp243.not = icmp eq ptr %.pn362, @object_list
  br i1 %cmp243.not, label %for.end288, label %do.body246

for.end288:                                       ; preds = %do.body269, %do.end233
  %new_leaks.0.lcssa = phi i32 [ 0, %do.end233 ], [ %new_leaks.1, %do.body269 ]
  %call.i462 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i462, label %rcu_read_unlock.exit472, label %land.lhs.true.i465

land.lhs.true.i465:                               ; preds = %for.end288
  %call1.i463 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i464 = icmp eq i32 %call1.i463, 0
  br i1 %tobool.not.i464, label %rcu_read_unlock.exit472, label %land.lhs.true2.i467

land.lhs.true2.i467:                              ; preds = %land.lhs.true.i465
  %.b4.i466 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i466, label %rcu_read_unlock.exit472, label %if.then.i468

if.then.i468:                                     ; preds = %land.lhs.true2.i467
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #14
  br label %rcu_read_unlock.exit472

rcu_read_unlock.exit472:                          ; preds = %if.then.i468, %land.lhs.true2.i467, %land.lhs.true.i465, %for.end288
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %127 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i469 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i469 to ptr
  %preempt_count.i.i.i.i470 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i.i470 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i.i470, align 4
  %sub.i.i.i471 = add i32 %130, -1
  store volatile i32 %sub.i.i.i471, ptr %preempt_count.i.i.i.i470, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %tobool289.not = icmp eq i32 %new_leaks.0.lcssa, 0
  br i1 %tobool289.not, label %cleanup297, label %if.then290

if.then290:                                       ; preds = %rcu_read_unlock.exit472
  store i1 true, ptr @kmemleak_found_leaks, align 1
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %new_leaks.0.lcssa) #16
  br label %cleanup297

cleanup297:                                       ; preds = %if.then290, %rcu_read_unlock.exit472, %scan_should_stop.exit, %if.then2.i, %rcu_read_unlock.exit453
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_str_object_info(ptr noundef %str) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #14
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !372
  %call.i = call i32 @_kstrtoul(ptr noundef %str, i32 noundef 0, ptr noundef nonnull %addr) #14
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %call1 = call fastcc ptr @find_and_get_object(i32 noundef %2, i32 noundef 0)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %do.body6

do.end:                                           ; preds = %if.end
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %4) #16
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call1) #14
  call fastcc void @dump_object_info(ptr noundef nonnull %call1)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call1, i32 noundef %call8) #14
  call fastcc void @put_object(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %do.end, %entry
  %retval.0 = phi i32 [ 0, %do.body6 ], [ -22, %do.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scan_block(ptr noundef %_start, ptr noundef readnone %_end, ptr noundef readnone %scanned) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_start to i32
  %add = add i32 %0, 3
  %and = and i32 %add, -4
  %1 = inttoptr i32 %and to ptr
  %add.ptr = getelementptr i8, ptr %_end, i32 -3
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kmemleak_lock) #14
  %cmp1112 = icmp ugt ptr %add.ptr, %1
  br i1 %cmp1112, label %for.body, label %do.body40

for.body:                                         ; preds = %for.inc, %entry
  %ptr.0113 = phi ptr [ %incdec.ptr, %for.inc ], [ %1, %entry ]
  %.b.i = load i1, ptr @kmemleak_enabled, align 4
  br i1 %.b.i, label %do.body40, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %2 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 256
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body40, !prof !357

if.end.i.i:                                       ; preds = %if.then2.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %and1.i.i.i.i.i.i = and i32 %14, 1
  br label %scan_should_stop.exit

if.else.i:                                        ; preds = %if.end.i
  %call6.i = tail call zeroext i1 @kthread_should_stop() #14
  %conv.i = zext i1 %call6.i to i32
  br label %scan_should_stop.exit

scan_should_stop.exit:                            ; preds = %if.else.i, %if.end.i.i
  %retval.0.i = phi i32 [ %conv.i, %if.else.i ], [ %and1.i.i.i.i.i.i, %if.end.i.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %do.body40

if.end:                                           ; preds = %scan_should_stop.exit
  tail call void @kasan_disable_current() #14
  %15 = ptrtoint ptr %ptr.0113 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ptr.0113, align 4
  tail call void @kasan_enable_current() #14
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr @min_addr, align 4
  %cmp6 = icmp ugt i32 %18, %16
  br i1 %cmp6, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i32, ptr @max_addr, align 4
  %cmp8.not = icmp ugt i32 %19, %16
  br i1 %cmp8.not, label %if.end11, label %for.inc

if.end11:                                         ; preds = %lor.lhs.false
  %rb.039.i = load ptr, ptr @object_tree_root, align 4
  %tobool.not40.i = icmp eq ptr %rb.039.i, null
  br i1 %tobool.not40.i, label %for.inc, label %while.body.i

while.body.i:                                     ; preds = %cleanup.i, %if.end11
  %rb.041.i = phi ptr [ %rb.0.i, %cleanup.i ], [ %rb.039.i, %if.end11 ]
  %pointer.i = getelementptr i8, ptr %rb.041.i, i32 24
  %20 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pointer.i, align 4
  %22 = inttoptr i32 %21 to ptr
  %cmp.i = icmp ult ptr %17, %22
  br i1 %cmp.i, label %if.then.i, label %if.else.i66

if.then.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i, i32 0, i32 2
  br label %cleanup.i

if.else.i66:                                      ; preds = %while.body.i
  %size.i = getelementptr i8, ptr %rb.041.i, i32 28
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %add.i = add i32 %24, %21
  %cmp2.not.i = icmp ugt i32 %add.i, %16
  br i1 %cmp2.not.i, label %lookup_object.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i66
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb.041.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %rb.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %25 = ptrtoint ptr %rb.1.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %rb.0.i = load ptr, ptr %rb.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %rb.0.i, null
  br i1 %tobool.not.i, label %for.inc, label %while.body.i

lookup_object.exit:                               ; preds = %if.else.i66
  %add.ptr.le.i = getelementptr i8, ptr %rb.041.i, i32 -64
  %tobool13.not = icmp eq ptr %add.ptr.le.i, null
  %cmp16 = icmp eq ptr %add.ptr.le.i, %scanned
  %or.cond = or i1 %tobool13.not, %cmp16
  br i1 %or.cond, label %for.inc, label %if.end19

if.end19:                                         ; preds = %lookup_object.exit
  tail call void @_raw_spin_lock_nested(ptr noundef nonnull %add.ptr.le.i, i32 noundef 1) #14
  %min_count.i = getelementptr i8, ptr %rb.041.i, i32 36
  %26 = ptrtoint ptr %min_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_count.i, align 4
  %cmp.not.i = icmp eq i32 %27, -1
  br i1 %cmp.not.i, label %if.end23.thread, label %color_gray.exit

color_gray.exit:                                  ; preds = %if.end19
  %count.i = getelementptr i8, ptr %rb.041.i, i32 40
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i, align 4
  %cmp2.i.not = icmp slt i32 %29, %27
  br i1 %cmp2.i.not, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %color_gray.exit, %if.end19
  tail call fastcc void @update_refs(ptr noundef nonnull %add.ptr.le.i)
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr.le.i) #14
  br label %for.inc

if.end23:                                         ; preds = %color_gray.exit
  %excess_ref22 = getelementptr i8, ptr %rb.041.i, i32 32
  %30 = ptrtoint ptr %excess_ref22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %excess_ref22, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr.le.i) #14
  %tobool25.not = icmp eq i32 %31, 0
  br i1 %tobool25.not, label %for.inc, label %if.then26

if.then26:                                        ; preds = %if.end23
  %32 = inttoptr i32 %31 to ptr
  %rb.039.i67 = load ptr, ptr @object_tree_root, align 4
  %tobool.not40.i68 = icmp eq ptr %rb.039.i67, null
  br i1 %tobool.not40.i68, label %for.inc, label %while.body.i72

while.body.i72:                                   ; preds = %cleanup.i87, %if.then26
  %rb.041.i69 = phi ptr [ %rb.0.i85, %cleanup.i87 ], [ %rb.039.i67, %if.then26 ]
  %pointer.i70 = getelementptr i8, ptr %rb.041.i69, i32 24
  %33 = ptrtoint ptr %pointer.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pointer.i70, align 4
  %35 = inttoptr i32 %34 to ptr
  %cmp.i71 = icmp ult ptr %32, %35
  br i1 %cmp.i71, label %if.then.i74, label %if.else.i78

if.then.i74:                                      ; preds = %while.body.i72
  %rb_left.i73 = getelementptr inbounds %struct.rb_node, ptr %rb.041.i69, i32 0, i32 2
  br label %cleanup.i87

if.else.i78:                                      ; preds = %while.body.i72
  %size.i75 = getelementptr i8, ptr %rb.041.i69, i32 28
  %36 = ptrtoint ptr %size.i75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i75, align 4
  %add.i76 = add i32 %37, %34
  %cmp2.not.i77 = icmp ugt i32 %add.i76, %31
  br i1 %cmp2.not.i77, label %if.else5.i83, label %if.then3.i80

if.then3.i80:                                     ; preds = %if.else.i78
  %rb_right.i79 = getelementptr inbounds %struct.rb_node, ptr %rb.041.i69, i32 0, i32 1
  br label %cleanup.i87

if.else5.i83:                                     ; preds = %if.else.i78
  %38 = inttoptr i32 %34 to ptr
  %add.ptr.le.i81 = getelementptr i8, ptr %rb.041.i69, i32 -64
  %cmp6.i82.not = icmp eq ptr %38, %32
  br i1 %cmp6.i82.not, label %lookup_object.exit89, label %cleanup.thread34.i

cleanup.thread34.i:                               ; preds = %if.else5.i83
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %31) #16
  tail call void @dump_stack() #16
  tail call fastcc void @dump_object_info(ptr noundef %add.ptr.le.i81) #14
  br label %for.inc

cleanup.i87:                                      ; preds = %if.then3.i80, %if.then.i74
  %rb.1.in.i84 = phi ptr [ %rb_left.i73, %if.then.i74 ], [ %rb_right.i79, %if.then3.i80 ]
  %39 = ptrtoint ptr %rb.1.in.i84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %rb.0.i85 = load ptr, ptr %rb.1.in.i84, align 4
  %tobool.not.i86 = icmp eq ptr %rb.0.i85, null
  br i1 %tobool.not.i86, label %for.inc, label %while.body.i72

lookup_object.exit89:                             ; preds = %if.else5.i83
  %tobool28.not = icmp eq ptr %add.ptr.le.i81, null
  %cmp31 = icmp eq ptr %add.ptr.le.i81, %scanned
  %or.cond65 = or i1 %tobool28.not, %cmp31
  br i1 %or.cond65, label %for.inc, label %if.end34

if.end34:                                         ; preds = %lookup_object.exit89
  tail call void @_raw_spin_lock_nested(ptr noundef nonnull %add.ptr.le.i81, i32 noundef 1) #14
  tail call fastcc void @update_refs(ptr noundef nonnull %add.ptr.le.i81)
  tail call void @_raw_spin_unlock(ptr noundef nonnull %add.ptr.le.i81) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %lookup_object.exit89, %cleanup.i87, %cleanup.thread34.i, %if.then26, %if.end23, %if.end23.thread, %lookup_object.exit, %cleanup.i, %if.end11, %lor.lhs.false, %if.end
  %incdec.ptr = getelementptr i32, ptr %ptr.0113, i32 1
  %cmp1 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp1, label %for.body, label %do.body40

do.body40:                                        ; preds = %for.inc, %scan_should_stop.exit, %if.then2.i, %for.body, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kmemleak_lock, i32 noundef %call) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scan_gray_list() unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gray_list, align 4
  %cmp.not48 = icmp eq ptr %0, @gray_list
  br i1 %cmp.not48, label %while.end, label %while.body

while.body:                                       ; preds = %list_del.exit, %entry
  %.pn49 = phi ptr [ %36, %list_del.exit ], [ %0, %entry ]
  %object.053 = getelementptr i8, ptr %.pn49, i32 -56
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1386, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %.b.i = load i1, ptr @kmemleak_enabled, align 4
  br i1 %.b.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body
  %1 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end, !prof !357

if.end.i.i:                                       ; preds = %if.then2.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i.i = and i32 %13, 1
  br label %scan_should_stop.exit

if.else.i:                                        ; preds = %if.end.i
  %call6.i = tail call zeroext i1 @kthread_should_stop() #14
  %conv.i = zext i1 %call6.i to i32
  br label %scan_should_stop.exit

scan_should_stop.exit:                            ; preds = %if.else.i, %if.end.i.i
  %retval.0.i = phi i32 [ %conv.i, %if.else.i ], [ %and1.i.i.i.i.i.i, %if.end.i.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %scan_should_stop.exit
  %call.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %object.053) #14
  %flags1.i = getelementptr i8, ptr %.pn49, i32 -12
  %14 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1.i, align 4
  %16 = and i32 %15, 5
  %.not.i = icmp eq i32 %16, 1
  br i1 %.not.i, label %if.end6.i, label %scan_object.exit

if.end6.i:                                        ; preds = %if.then
  %area_list.i = getelementptr i8, ptr %.pn49, i32 56
  %17 = ptrtoint ptr %area_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %area_list.i, align 4
  %tobool.not.i.i40 = icmp ne ptr %18, null
  %and10.i = and i32 %15, 8
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond113.i = select i1 %tobool.not.i.i40, i1 %tobool11.not.i, i1 false
  br i1 %or.cond113.i, label %for.body.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end6.i
  %pointer.i = getelementptr i8, ptr %.pn49, i32 32
  %19 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pointer.i, align 4
  %21 = inttoptr i32 %20 to ptr
  %size.i = getelementptr i8, ptr %.pn49, i32 36
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %add.i = add i32 %23, %20
  %24 = inttoptr i32 %add.i to ptr
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body22.i, %if.then12.i
  %start.0.i = phi ptr [ %21, %if.then12.i ], [ %add.ptr.i, %do.body22.i ]
  %flags.0.i = phi i32 [ %call.i39, %if.then12.i ], [ %call40.i, %do.body22.i ]
  %add.ptr.i = getelementptr i8, ptr %start.0.i, i32 4096
  %cmp16.i = icmp ult ptr %add.ptr.i, %24
  %add.ptr..i = select i1 %cmp16.i, ptr %add.ptr.i, ptr %24
  tail call fastcc void @scan_block(ptr noundef %start.0.i, ptr noundef %add.ptr..i, ptr noundef %object.053) #14
  br i1 %cmp16.i, label %do.body22.i, label %scan_object.exit

do.body22.i:                                      ; preds = %do.body14.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %object.053, i32 noundef %flags.0.i) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1359, i32 noundef 0) #14
  %call.i.i = tail call i32 @__cond_resched() #14
  %call40.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %object.053) #14
  %25 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags1.i, align 4
  %and45.i = and i32 %26, 1
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %scan_object.exit, label %do.body14.i

for.body.i:                                       ; preds = %for.body.i, %if.end6.i
  %area.0116.i = phi ptr [ %34, %for.body.i ], [ %18, %if.end6.i ]
  %start58.i = getelementptr inbounds %struct.kmemleak_scan_area, ptr %area.0116.i, i32 0, i32 1
  %27 = ptrtoint ptr %start58.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start58.i, align 4
  %29 = inttoptr i32 %28 to ptr
  %size60.i = getelementptr inbounds %struct.kmemleak_scan_area, ptr %area.0116.i, i32 0, i32 2
  %30 = ptrtoint ptr %size60.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size60.i, align 4
  %add61.i = add i32 %31, %28
  %32 = inttoptr i32 %add61.i to ptr
  tail call fastcc void @scan_block(ptr noundef %29, ptr noundef %32, ptr noundef %object.053) #14
  %33 = ptrtoint ptr %area.0116.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %area.0116.i, align 4
  %tobool57.not.i = icmp eq ptr %34, null
  br i1 %tobool57.not.i, label %scan_object.exit, label %for.body.i

scan_object.exit:                                 ; preds = %for.body.i, %do.body22.i, %do.body14.i, %if.then
  %flags.2.i = phi i32 [ %call.i39, %if.then ], [ %call.i39, %for.body.i ], [ %flags.0.i, %do.body14.i ], [ %call40.i, %do.body22.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %object.053, i32 noundef %flags.2.i) #14
  br label %if.end

if.end:                                           ; preds = %scan_object.exit, %scan_should_stop.exit, %if.then2.i, %while.body
  %35 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn49, align 4
  %call.i.i41 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn49) #14
  br i1 %call.i.i41, label %if.end.i.i42, label %list_del.exit

if.end.i.i42:                                     ; preds = %if.end
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn49, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn49, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i42, %if.end
  %43 = ptrtoint ptr %.pn49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn49, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn49, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @put_object(ptr noundef %object.053)
  %cmp.not = icmp eq ptr %36, @gray_list
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %list_del.exit, %entry
  %45 = load volatile ptr, ptr @gray_list, align 4
  %cmp.i.not = icmp eq ptr %45, @gray_list
  br i1 %cmp.i.not, label %if.end26, label %do.end, !prof !357

do.end:                                           ; preds = %while.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1401, i32 noundef 9, ptr noundef null) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end, %while.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_unreferenced(ptr noundef %seq, ptr noundef %object) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 16
  %1 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %jiffies, align 4
  %sub = sub i32 %0, %2
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #14
  %tobool.not = icmp eq ptr %seq, null
  %pointer2 = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 7
  %3 = ptrtoint ptr %pointer2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pointer2, align 4
  %size3 = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 8
  %5 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size3, align 4
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %seq, ptr noundef nonnull @.str.99, i32 noundef %4, i32 noundef %6) #14
  %comm = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 18
  %pid = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 17
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 4
  %9 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jiffies, align 4
  %div = udiv i32 %call, 1000
  %rem = urem i32 %call, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %seq, ptr noundef nonnull @.str.102, ptr noundef %comm, i32 noundef %8, i32 noundef %10, i32 noundef %div, i32 noundef %rem) #14
  tail call fastcc void @hex_dump_object(ptr noundef nonnull %seq, ptr noundef %object)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %seq, ptr noundef nonnull @.str.106) #14
  br label %do.end37

do.end:                                           ; preds = %entry
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %4, i32 noundef %6) #16
  %comm16 = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 18
  %pid18 = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 17
  %11 = ptrtoint ptr %pid18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid18, align 4
  %13 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jiffies, align 4
  %call.frozen = freeze i32 %call
  %div20 = udiv i32 %call.frozen, 1000
  %15 = mul i32 %div20, 1000
  %rem21.decomposed = sub i32 %call.frozen, %15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %comm16, i32 noundef %12, i32 noundef %14, i32 noundef %div20, i32 noundef %rem21.decomposed) #16
  tail call fastcc void @hex_dump_object(ptr noundef null, ptr noundef %object)
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #16
  br label %do.end37

do.end37:                                         ; preds = %do.end, %if.then
  %trace_len = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 15
  %16 = ptrtoint ptr %trace_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trace_len, align 4
  %cmp79.not = icmp eq i32 %17, 0
  br i1 %cmp79.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end49, %do.end37
  %i.080 = phi i32 [ %inc, %do.end49 ], [ 0, %do.end37 ]
  %arrayidx = getelementptr %struct.kmemleak_object, ptr %object, i32 0, i32 14, i32 %i.080
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = inttoptr i32 %19 to ptr
  br i1 %tobool.not, label %do.end44, label %if.then40

if.then40:                                        ; preds = %for.body
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %seq, ptr noundef nonnull @.str.110, ptr noundef %20, ptr noundef %20) #14
  br label %do.end49

do.end44:                                         ; preds = %for.body
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %20, ptr noundef %20) #16
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %if.then40
  %inc = add nuw i32 %i.080, 1
  %21 = ptrtoint ptr %trace_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %trace_len, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %do.end49, %do.end37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_disable_current() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_enable_current() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_refs(ptr noundef %object) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 11
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %cmp.not.i = icmp eq i32 %1, -1
  br i1 %cmp.not.i, label %if.end26, label %color_white.exit

color_white.exit:                                 ; preds = %entry
  %min_count.i = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 10
  %2 = ptrtoint ptr %min_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_count.i, align 4
  %cmp2.i = icmp slt i32 %1, %3
  br i1 %cmp2.i, label %if.end, label %if.end26

if.end:                                           ; preds = %color_white.exit
  %inc = add nuw i32 %1, 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %count.i, align 4
  %5 = ptrtoint ptr %min_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %min_count.i, align 4
  %cmp.not.i33 = icmp ne i32 %6, -1
  %cmp2.i35 = icmp sge i32 %inc, %6
  %or.cond = select i1 %cmp.not.i33, i1 %cmp2.i35, i1 false
  br i1 %or.cond, label %if.then2, label %if.end26

if.then2:                                         ; preds = %if.end
  %use_count.i = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %use_count.i, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %use_count.i, ptr %use_count.i, i32 0, i32 1, ptr elementtype(i32) %use_count.i) #14, !srcloc !364
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end, label %get_object.exit

get_object.exit:                                  ; preds = %if.then2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !365
  br label %if.end19

do.end:                                           ; preds = %if.then2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1208, i32 noundef 9, ptr noundef null) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %get_object.exit
  %gray_list = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 3
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gray_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %gray_list, ptr noundef %8, ptr noundef nonnull @gray_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end26

if.end.i.i:                                       ; preds = %if.end19
  store ptr %gray_list, ptr getelementptr inbounds (%struct.list_head, ptr @gray_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %gray_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gray_list, ptr %gray_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %gray_list, ptr %8, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end.i.i, %if.end19, %if.end, %color_white.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hex_dump_object(ptr noundef %seq, ptr nocapture noundef readonly %object) unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %pointer = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 7
  %0 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pointer, align 4
  %size = getelementptr inbounds %struct.kmemleak_object, ptr %object, i32 0, i32 8
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 32)
  %tobool.not = icmp eq ptr %seq, null
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %seq, ptr noundef nonnull @.str.114, i32 noundef %4) #14
  %5 = inttoptr i32 %1 to ptr
  tail call void @kasan_disable_current() #14
  tail call void @seq_hex_dump(ptr noundef nonnull %seq, ptr noundef nonnull @.str.117, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %5, i32 noundef %4, i1 noundef zeroext true) #14
  br label %warn_or_seq_hex_dump.exit

if.else.i:                                        ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %4) #16
  %6 = inttoptr i32 %1 to ptr
  tail call void @kasan_disable_current() #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %6, i32 noundef %4, i1 noundef zeroext true) #14
  br label %warn_or_seq_hex_dump.exit

warn_or_seq_hex_dump.exit:                        ; preds = %if.else.i, %if.then.i
  tail call void @kasan_enable_current() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kmemleak_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @scan_mutex, i32 noundef 0) #14
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !362
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.end
  %call2 = tail call i32 @rcu_read_lock_any_held() #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @kmemleak_seq_start.__warned, align 1
  br i1 %.b35, label %do.end, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  store i1 true, ptr @kmemleak_seq_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1637, ptr noundef nonnull @.str.92) #14
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5, %land.lhs.true, %rcu_read_lock.exit
  %.pn40 = load volatile ptr, ptr @object_list, align 4
  %cmp13.not41 = icmp eq ptr %.pn40, @object_list
  br i1 %cmp13.not41, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %do.end
  %.pn43 = phi ptr [ %.pn, %for.inc ], [ %.pn40, %do.end ]
  %n.042 = phi i64 [ %dec, %for.inc ], [ %1, %do.end ]
  %dec = add i64 %n.042, -1
  %cmp14 = icmp sgt i64 %n.042, 0
  br i1 %cmp14, label %for.inc, label %if.end16

if.end16:                                         ; preds = %for.body
  %use_count.i = getelementptr i8, ptr %.pn43, i32 36
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %use_count.i, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %use_count.i, ptr %use_count.i, i32 0, i32 1, ptr elementtype(i32) %use_count.i) #14, !srcloc !364
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %for.inc, label %get_object.exit

get_object.exit:                                  ; preds = %if.end16
  %object.0.le = getelementptr i8, ptr %.pn43, i32 -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !365
  br label %cleanup

for.inc:                                          ; preds = %if.end16, %for.body
  %8 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn43, align 4
  %cmp13.not = icmp eq ptr %.pn, @object_list
  br i1 %cmp13.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %get_object.exit, %do.end, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ %object.0.le, %get_object.exit ], [ null, %do.end ], [ null, %for.inc ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmemleak_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %v, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %rcu_read_unlock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_unlock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_unlock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.then
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %0 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @mutex_unlock(ptr noundef nonnull @scan_mutex) #14
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %rcu_read_unlock.exit
  tail call fastcc void @put_object(ptr noundef nonnull %v)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kmemleak_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %object_list = getelementptr inbounds %struct.kmemleak_object, ptr %v, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %.pn.in = phi ptr [ %object_list, %entry ], [ %.pn, %for.body ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @object_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %use_count.i = getelementptr i8, ptr %.pn, i32 36
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @llvm.prefetch.p0(ptr %use_count.i, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %use_count.i, ptr %use_count.i, i32 0, i32 1, ptr elementtype(i32) %use_count.i) #14, !srcloc !364
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %for.cond, label %get_object.exit.thread

get_object.exit.thread:                           ; preds = %for.body
  %obj.0.le = getelementptr i8, ptr %.pn, i32 -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !365
  br label %for.end

for.end:                                          ; preds = %get_object.exit.thread, %for.cond
  %next_obj.0 = phi ptr [ %obj.0.le, %get_object.exit.thread ], [ null, %for.cond ]
  tail call fastcc void @put_object(ptr noundef %v)
  ret ptr %next_obj.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmemleak_seq_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %v) #14
  %flags1 = getelementptr inbounds %struct.kmemleak_object, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %count.i.i = getelementptr inbounds %struct.kmemleak_object, ptr %v, i32 0, i32 11
  %2 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %3, -1
  br i1 %cmp.not.i.i, label %do.body4, label %color_white.exit.i

color_white.exit.i:                               ; preds = %land.lhs.true
  %min_count.i.i = getelementptr inbounds %struct.kmemleak_object, ptr %v, i32 0, i32 10
  %4 = ptrtoint ptr %min_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_count.i.i, align 4
  %cmp2.i.i = icmp sge i32 %3, %5
  %and.i = and i32 %1, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp2.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %do.body4, label %unreferenced_object.exit

unreferenced_object.exit:                         ; preds = %color_white.exit.i
  %6 = load i32, ptr @jiffies_last_scan, align 4
  %jiffies.i = getelementptr inbounds %struct.kmemleak_object, ptr %v, i32 0, i32 16
  %7 = ptrtoint ptr %jiffies.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jiffies.i, align 4
  %.b = load i1, ptr @jiffies_min_age, align 4
  %9 = select i1 %.b, i32 500, i32 0
  %10 = add i32 %8, %9
  %sub.i = sub i32 %6, %10
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then, label %do.body4

if.then:                                          ; preds = %unreferenced_object.exit
  tail call fastcc void @print_unreferenced(ptr noundef %seq, ptr noundef %v)
  br label %do.body4

do.body4:                                         ; preds = %if.then, %unreferenced_object.exit, %color_white.exit.i, %land.lhs.true, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %v, i32 noundef %call) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmemleak_scan_thread(ptr nocapture noundef readnone %arg) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !346) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %3, i32 noundef 10) #14
  %.b = load i1, ptr @kmemleak_scan_thread.first_run, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, ptr @kmemleak_scan_thread.first_run, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %if.then
  %timeout.031 = phi i32 [ 6000, %if.then ], [ %call5, %while.body ]
  %call4 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call4, label %if.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call5 = tail call i32 @schedule_timeout_interruptible(i32 noundef %timeout.031) #14
  %tobool3.not = icmp eq i32 %call5, 0
  br i1 %tobool3.not, label %if.end, label %land.rhs

if.end:                                           ; preds = %while.body, %land.rhs, %entry
  %call734 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call734, label %do.end26, label %while.body9

while.body9:                                      ; preds = %while.end22, %if.end
  %4 = load volatile i32, ptr @jiffies_scan_wait, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @scan_mutex, i32 noundef 0) #14
  tail call fastcc void @kmemleak_scan()
  tail call void @mutex_unlock(ptr noundef nonnull @scan_mutex) #14
  %tobool15.not32 = icmp eq i32 %4, 0
  br i1 %tobool15.not32, label %while.end22, label %land.rhs16

land.rhs16:                                       ; preds = %while.body20, %while.body9
  %timeout10.033 = phi i32 [ %call21, %while.body20 ], [ %4, %while.body9 ]
  %call17 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call17, label %while.end22, label %while.body20

while.body20:                                     ; preds = %land.rhs16
  %call21 = tail call i32 @schedule_timeout_interruptible(i32 noundef %timeout10.033) #14
  %tobool15.not = icmp eq i32 %call21, 0
  br i1 %tobool15.not, label %while.end22, label %land.rhs16

while.end22:                                      ; preds = %while.body20, %land.rhs16, %while.body9
  %call7 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call7, label %do.end26, label %while.body9

do.end26:                                         ; preds = %while.end22, %if.end
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !100, !101, !102, !104, !105, !107, !109, !111, !112, !113, !115, !116, !117, !118, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !172, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !214, !216, !218, !220, !221, !222, !223, !225, !227, !228, !230, !231, !232, !233, !235, !237, !238, !239, !241, !243, !244, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !267, !269, !271, !273, !275, !277, !279, !281, !282, !283, !284, !286, !288, !290, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !314, !315, !317, !319, !321, !323, !324, !325, !326, !328, !330, !332, !333, !334, !335, !337, !339, !340, !341, !342, !344, !345}
!llvm.named.register.sp = !{!346}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../mm/kmemleak.c", i32 234, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype226, !1, !"__UNIQUE_ID_verbosetype226", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../mm/kmemleak.c", i32 899, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @kmemleak_alloc.__UNIQUE_ID_ddebug234, !4, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!9 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_kmemleak_alloc, !11, !"__ksymtab_kmemleak_alloc", i1 false, i1 false}
!11 = !{!"../mm/kmemleak.c", i32 904, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/kmemleak.c", i32 920, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @kmemleak_alloc_percpu.__UNIQUE_ID_ddebug235, !13, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_kmemleak_alloc_percpu, !18, !"__ksymtab_kmemleak_alloc_percpu", i1 false, i1 false}
!18 = !{!"../mm/kmemleak.c", i32 931, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/kmemleak.c", i32 944, i32 2}
!21 = !{ptr @kmemleak_vmalloc.__UNIQUE_ID_ddebug236, !20, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!22 = !{ptr @__ksymtab_kmemleak_vmalloc, !23, !"__ksymtab_kmemleak_vmalloc", i1 false, i1 false}
!23 = !{!"../mm/kmemleak.c", i32 956, i32 1}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/kmemleak.c", i32 967, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @kmemleak_free.__UNIQUE_ID_ddebug237, !25, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!28 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__ksymtab_kmemleak_free, !30, !"__ksymtab_kmemleak_free", i1 false, i1 false}
!30 = !{!"../mm/kmemleak.c", i32 972, i32 1}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../mm/kmemleak.c", i32 985, i32 2}
!33 = !{ptr @kmemleak_free_part.__UNIQUE_ID_ddebug238, !32, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!34 = !{ptr @__ksymtab_kmemleak_free_part, !35, !"__ksymtab_kmemleak_free_part", i1 false, i1 false}
!35 = !{!"../mm/kmemleak.c", i32 990, i32 1}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/kmemleak.c", i32 1003, i32 2}
!38 = !{ptr @kmemleak_free_percpu.__UNIQUE_ID_ddebug239, !37, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!39 = !{ptr @__ksymtab_kmemleak_free_percpu, !40, !"__ksymtab_kmemleak_free_percpu", i1 false, i1 false}
!40 = !{!"../mm/kmemleak.c", i32 1010, i32 1}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../mm/kmemleak.c", i32 1024, i32 2}
!43 = !{ptr @kmemleak_update_trace.__UNIQUE_ID_ddebug240, !42, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!44 = !{ptr @__ksymtab_kmemleak_update_trace, !45, !"__ksymtab_kmemleak_update_trace", i1 false, i1 false}
!45 = !{!"../mm/kmemleak.c", i32 1044, i32 1}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../mm/kmemleak.c", i32 1055, i32 2}
!48 = !{ptr @kmemleak_not_leak.__UNIQUE_ID_ddebug241, !47, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!49 = !{ptr @__ksymtab_kmemleak_not_leak, !50, !"__ksymtab_kmemleak_not_leak", i1 false, i1 false}
!50 = !{!"../mm/kmemleak.c", i32 1060, i32 1}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../mm/kmemleak.c", i32 1073, i32 2}
!53 = !{ptr @kmemleak_ignore.__UNIQUE_ID_ddebug242, !52, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!54 = !{ptr @__ksymtab_kmemleak_ignore, !55, !"__ksymtab_kmemleak_ignore", i1 false, i1 false}
!55 = !{!"../mm/kmemleak.c", i32 1078, i32 1}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../mm/kmemleak.c", i32 1093, i32 2}
!58 = !{ptr @kmemleak_scan_area.__UNIQUE_ID_ddebug243, !57, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!59 = !{ptr @__ksymtab_kmemleak_scan_area, !60, !"__ksymtab_kmemleak_scan_area", i1 false, i1 false}
!60 = !{!"../mm/kmemleak.c", i32 1098, i32 1}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/kmemleak.c", i32 1111, i32 2}
!63 = !{ptr @kmemleak_no_scan.__UNIQUE_ID_ddebug244, !62, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!64 = !{ptr @__ksymtab_kmemleak_no_scan, !65, !"__ksymtab_kmemleak_no_scan", i1 false, i1 false}
!65 = !{!"../mm/kmemleak.c", i32 1116, i32 1}
!66 = !{ptr @__ksymtab_kmemleak_alloc_phys, !67, !"__ksymtab_kmemleak_alloc_phys", i1 false, i1 false}
!67 = !{!"../mm/kmemleak.c", i32 1133, i32 1}
!68 = !{ptr @__ksymtab_kmemleak_free_part_phys, !69, !"__ksymtab_kmemleak_free_part_phys", i1 false, i1 false}
!69 = !{!"../mm/kmemleak.c", i32 1147, i32 1}
!70 = !{ptr @__ksymtab_kmemleak_not_leak_phys, !71, !"__ksymtab_kmemleak_not_leak_phys", i1 false, i1 false}
!71 = !{!"../mm/kmemleak.c", i32 1159, i32 1}
!72 = !{ptr @__ksymtab_kmemleak_ignore_phys, !73, !"__ksymtab_kmemleak_ignore_phys", i1 false, i1 false}
!73 = !{!"../mm/kmemleak.c", i32 1171, i32 1}
!74 = !{ptr @__setup_kmemleak_boot_config, !75, !"__setup_kmemleak_boot_config", i1 false, i1 false}
!75 = !{!"../mm/kmemleak.c", i32 1939, i32 1}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../mm/kmemleak.c", i32 1959, i32 17}
!78 = !{ptr @__initcall__kmod_kmemleak__268_2005_kmemleak_late_init7, !79, !"__initcall__kmod_kmemleak__268_2005_kmemleak_late_init7", i1 false, i1 false}
!79 = !{!"../mm/kmemleak.c", i32 2005, i32 1}
!80 = !{ptr @object_cache, !81, !"object_cache", i1 false, i1 false}
!81 = !{!"../mm/kmemleak.c", i32 200, i32 27}
!82 = !{ptr @scan_area_cache, !83, !"scan_area_cache", i1 false, i1 false}
!83 = !{!"../mm/kmemleak.c", i32 201, i32 27}
!84 = !{ptr @kmemleak_error, !85, !"kmemleak_error", i1 false, i1 false}
!85 = !{!"../mm/kmemleak.c", i32 212, i32 12}
!86 = distinct !{null, !87, !"jiffies_min_age", i1 false, i1 false}
!87 = !{!"../mm/kmemleak.c", i32 220, i32 22}
!88 = !{ptr @jiffies_scan_wait, !89, !"jiffies_scan_wait", i1 false, i1 false}
!89 = !{!"../mm/kmemleak.c", i32 223, i32 22}
!90 = distinct !{null, !91, !"kmemleak_skip_disable", i1 false, i1 false}
!91 = !{!"../mm/kmemleak.c", i32 229, i32 12}
!92 = !{ptr @kmemleak_verbose, !93, !"kmemleak_verbose", i1 false, i1 false}
!93 = !{!"../mm/kmemleak.c", i32 233, i32 13}
!94 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!95 = distinct !{null, !96, !"kmemleak_enabled", i1 false, i1 false}
!96 = !{!"../mm/kmemleak.c", i32 204, i32 12}
!97 = !{ptr @.str.20, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../mm/kmemleak.c", i32 588, i32 3}
!99 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @create_object._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @create_object._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @create_object.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../mm/kmemleak.c", i32 596, i32 2}
!104 = !{ptr @.str.22, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../mm/kmemleak.c", i32 610, i32 25}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../mm/kmemleak.c", i32 613, i32 25}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../mm/kmemleak.c", i32 644, i32 4}
!111 = !{ptr @create_object._entry.25, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @create_object._entry_ptr.27, !110, !"_entry_ptr", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../mm/kmemleak.c", i32 444, i32 3}
!115 = !{ptr @.str.28, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mem_pool_alloc._entry, !114, !"_entry", i1 false, i1 false}
!118 = !{ptr @mem_pool_alloc._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @mem_pool_free_list, !120, !"mem_pool_free_list", i1 false, i1 false}
!120 = !{!"../mm/kmemleak.c", i32 193, i32 8}
!121 = !{ptr @mem_pool_free_count, !122, !"mem_pool_free_count", i1 false, i1 false}
!122 = !{!"../mm/kmemleak.c", i32 192, i32 12}
!123 = !{ptr @mem_pool, !124, !"mem_pool", i1 false, i1 false}
!124 = !{!"../mm/kmemleak.c", i32 191, i32 31}
!125 = !{ptr @.str.30, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../mm/kmemleak.c", i32 197, i32 8}
!127 = !{ptr @kmemleak_lock, !126, !"kmemleak_lock", i1 false, i1 false}
!128 = !{ptr @min_addr, !129, !"min_addr", i1 false, i1 false}
!129 = !{!"../mm/kmemleak.c", i32 215, i32 22}
!130 = !{ptr @max_addr, !131, !"max_addr", i1 false, i1 false}
!131 = !{!"../mm/kmemleak.c", i32 216, i32 22}
!132 = !{ptr @object_tree_root, !133, !"object_tree_root", i1 false, i1 false}
!133 = !{!"../mm/kmemleak.c", i32 195, i32 23}
!134 = distinct !{null, !135, !"kmemleak_warning", i1 false, i1 false}
!135 = !{!"../mm/kmemleak.c", i32 210, i32 12}
!136 = !{ptr @.str.31, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../mm/kmemleak.c", i32 363, i32 2}
!138 = !{ptr @.str.32, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @dump_object_info._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @dump_object_info._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.34, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../mm/kmemleak.c", i32 365, i32 2}
!143 = !{ptr @dump_object_info._entry.33, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dump_object_info._entry_ptr.35, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.37, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../mm/kmemleak.c", i32 367, i32 2}
!147 = !{ptr @dump_object_info._entry.36, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @dump_object_info._entry_ptr.38, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.40, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../mm/kmemleak.c", i32 368, i32 2}
!151 = !{ptr @dump_object_info._entry.39, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @dump_object_info._entry_ptr.41, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../mm/kmemleak.c", i32 369, i32 2}
!155 = !{ptr @dump_object_info._entry.42, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @dump_object_info._entry_ptr.44, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../mm/kmemleak.c", i32 370, i32 2}
!159 = !{ptr @dump_object_info._entry.45, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @dump_object_info._entry_ptr.47, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../mm/kmemleak.c", i32 371, i32 2}
!163 = !{ptr @dump_object_info._entry.48, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dump_object_info._entry_ptr.50, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @object_list, !166, !"object_list", i1 false, i1 false}
!166 = !{!"../mm/kmemleak.c", i32 187, i32 8}
!167 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../mm/kmemleak.c", i32 849, i32 3}
!169 = !{ptr @.str.52, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @object_set_excess_ref._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @object_set_excess_ref._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = distinct !{null, !173, !"kmemleak_free_enabled", i1 false, i1 false}
!173 = !{!"../mm/kmemleak.c", i32 206, i32 12}
!174 = !{ptr @.str.53, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../mm/kmemleak.c", i32 400, i32 4}
!176 = !{ptr @.str.54, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @lookup_object._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @lookup_object._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!181 = !{ptr @.str.55, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.56, !180, !"<string literal>", i1 false, i1 false}
!183 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!184 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!185 = !{ptr @.str.57, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.58, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../mm/kmemleak.c", i32 762, i32 3}
!188 = !{ptr @.str.59, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @paint_ptr._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @paint_ptr._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.60, !187, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.61, !187, !"<string literal>", i1 false, i1 false}
!193 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.63, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../mm/kmemleak.c", i32 802, i32 3}
!196 = !{ptr @.str.64, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @add_scan_area._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @add_scan_area._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = distinct !{null, !200, !"__already_done", i1 false, i1 false}
!200 = !{!"../mm/kmemleak.c", i32 812, i32 3}
!201 = !{ptr @.str.66, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @add_scan_area._entry.65, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @add_scan_area._entry_ptr.67, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.69, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../mm/kmemleak.c", i32 820, i32 3}
!206 = !{ptr @add_scan_area._entry.68, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @add_scan_area._entry_ptr.70, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.71, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../mm/kmemleak.c", i32 872, i32 3}
!210 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @object_no_scan._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @object_no_scan._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @__setup_str_kmemleak_boot_config, !75, !"__setup_str_kmemleak_boot_config", i1 false, i1 false}
!214 = !{ptr @.str.73, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../mm/kmemleak.c", i32 1931, i32 18}
!216 = !{ptr @.str.74, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../mm/kmemleak.c", i32 1933, i32 23}
!218 = !{ptr @.str.75, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../mm/kmemleak.c", i32 1921, i32 2}
!220 = !{ptr @.str.76, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @kmemleak_disable._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @kmemleak_disable._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = distinct !{null, !224, !"kmemleak_initialized", i1 false, i1 false}
!224 = !{!"../mm/kmemleak.c", i32 208, i32 12}
!225 = !{ptr @.str.77, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../mm/kmemleak.c", i32 1900, i32 8}
!227 = !{ptr @cleanup_work, !226, !"cleanup_work", i1 false, i1 false}
!228 = !{ptr @.str.78, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../mm/kmemleak.c", i32 1897, i32 3}
!230 = !{ptr @.str.79, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @kmemleak_do_cleanup._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @kmemleak_do_cleanup._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @scan_thread, !234, !"scan_thread", i1 false, i1 false}
!234 = !{!"../mm/kmemleak.c", i32 218, i32 28}
!235 = !{ptr @.str.80, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../mm/kmemleak.c", i32 227, i32 8}
!237 = !{ptr @.str.81, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @scan_mutex, !236, !"scan_mutex", i1 false, i1 false}
!239 = distinct !{null, !240, !"kmemleak_found_leaks", i1 false, i1 false}
!240 = !{!"../mm/kmemleak.c", i32 231, i32 13}
!241 = !{ptr @.str.82, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../mm/kmemleak.c", i32 2000, i32 2}
!243 = !{ptr @.str.83, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @kmemleak_late_init._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @kmemleak_late_init._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @kmemleak_fops, !247, !"kmemleak_fops", i1 false, i1 false}
!247 = !{!"../mm/kmemleak.c", i32 1852, i32 37}
!248 = !{ptr @.str.84, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../mm/kmemleak.c", i32 1795, i32 19}
!250 = !{ptr @.str.85, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../mm/kmemleak.c", i32 1810, i32 24}
!252 = !{ptr @.str.86, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../mm/kmemleak.c", i32 1812, i32 24}
!254 = !{ptr @.str.87, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../mm/kmemleak.c", i32 1814, i32 24}
!256 = !{ptr @.str.88, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../mm/kmemleak.c", i32 1816, i32 24}
!258 = !{ptr @.str.89, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../mm/kmemleak.c", i32 1818, i32 24}
!260 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../mm/kmemleak.c", i32 1835, i32 26}
!262 = !{ptr @.str.91, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../mm/kmemleak.c", i32 1837, i32 24}
!264 = distinct !{null, !265, !"__warned", i1 false, i1 false}
!265 = !{!"../mm/kmemleak.c", i32 1749, i32 2}
!266 = !{ptr @.str.92, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @jiffies_last_scan, !268, !"jiffies_last_scan", i1 false, i1 false}
!268 = !{!"../mm/kmemleak.c", i32 221, i32 22}
!269 = distinct !{null, !270, !"kmemleak_stack_scan", i1 false, i1 false}
!270 = !{!"../mm/kmemleak.c", i32 225, i32 12}
!271 = distinct !{null, !272, !"__warned", i1 false, i1 false}
!272 = !{!"../mm/kmemleak.c", i32 1421, i32 2}
!273 = distinct !{null, !274, !"__warned", i1 false, i1 false}
!274 = !{!"../mm/kmemleak.c", i32 1485, i32 3}
!275 = distinct !{null, !276, !"__warned", i1 false, i1 false}
!276 = !{!"../mm/kmemleak.c", i32 1506, i32 2}
!277 = distinct !{null, !278, !"__warned", i1 false, i1 false}
!278 = !{!"../mm/kmemleak.c", i32 1533, i32 2}
!279 = !{ptr @.str.96, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../mm/kmemleak.c", i32 1551, i32 3}
!281 = !{ptr @.str.97, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @kmemleak_scan._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @kmemleak_scan._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @gray_list, !285, !"gray_list", i1 false, i1 false}
!285 = !{!"../mm/kmemleak.c", i32 189, i32 8}
!286 = !{ptr @.str.98, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!288 = !{ptr @.str.99, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../mm/kmemleak.c", i32 342, i32 2}
!290 = !{ptr @.str.100, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.101, !289, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @print_unreferenced._entry, !289, !"_entry", i1 false, i1 false}
!293 = !{ptr @print_unreferenced._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.102, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../mm/kmemleak.c", i32 344, i32 2}
!296 = !{ptr @.str.104, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @print_unreferenced._entry.103, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @print_unreferenced._entry_ptr.105, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.106, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../mm/kmemleak.c", i32 348, i32 2}
!301 = !{ptr @.str.108, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @print_unreferenced._entry.107, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @print_unreferenced._entry_ptr.109, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.110, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../mm/kmemleak.c", i32 352, i32 3}
!306 = !{ptr @.str.112, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @print_unreferenced._entry.111, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @print_unreferenced._entry_ptr.113, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.114, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../mm/kmemleak.c", i32 291, i32 2}
!311 = !{ptr @.str.115, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.116, !310, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @hex_dump_object._entry, !310, !"_entry", i1 false, i1 false}
!314 = !{ptr @hex_dump_object._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.117, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../mm/kmemleak.c", i32 269, i32 21}
!317 = !{ptr @.str.118, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../mm/kmemleak.c", i32 272, i32 18}
!319 = !{ptr @.str.119, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../mm/kmemleak.c", i32 272, i32 32}
!321 = !{ptr @.str.120, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../mm/kmemleak.c", i32 1725, i32 3}
!323 = !{ptr @.str.121, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @dump_str_object_info._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @dump_str_object_info._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @kmemleak_seq_ops, !327, !"kmemleak_seq_ops", i1 false, i1 false}
!327 = !{!"../mm/kmemleak.c", i32 1703, i32 36}
!328 = distinct !{null, !329, !"__warned", i1 false, i1 false}
!329 = !{!"../mm/kmemleak.c", i32 1637, i32 2}
!330 = !{ptr @.str.122, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../mm/kmemleak.c", i32 1605, i32 3}
!332 = !{ptr @.str.123, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @start_scan_thread._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @start_scan_thread._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = distinct !{null, !336, !"first_run", i1 false, i1 false}
!336 = !{!"../mm/kmemleak.c", i32 1563, i32 13}
!337 = !{ptr @.str.124, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../mm/kmemleak.c", i32 1565, i32 2}
!339 = !{ptr @.str.125, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @kmemleak_scan_thread._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @kmemleak_scan_thread._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.127, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../mm/kmemleak.c", i32 1590, i32 2}
!344 = !{ptr @kmemleak_scan_thread._entry.126, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @kmemleak_scan_thread._entry_ptr.128, !343, !"_entry_ptr", i1 false, i1 false}
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
!356 = !{i64 2148747779, i64 2148747784, i64 2148747797, i64 2148747841, i64 2148747875, i64 2148747896}
!357 = !{!"branch_weights", i32 2000, i32 1}
!358 = !{i64 2154145606}
!359 = !{i64 787940, i64 787961, i64 787984, i64 788003, i64 788022}
!360 = !{i64 2154146007}
!361 = !{i64 2149266712}
!362 = !{i64 2149241320}
!363 = !{i64 2148277867}
!364 = !{i64 762690, i64 762715, i64 762737, i64 762753, i64 762765, i64 762785, i64 762809, i64 762825, i64 762837}
!365 = !{i64 2148278055}
!366 = !{i64 2149241586}
!367 = !{i64 2148366900}
!368 = !{i64 2148281633, i64 2148281665, i64 2148281694, i64 2148281728, i64 2148281759, i64 2148281782}
!369 = !{i64 2148367129}
!370 = !{i64 2149051833, i64 2149051856, i64 2149051888, i64 2149051920, i64 2149051958, i64 2149051988}
!371 = !{!"branch_weights", i32 1, i32 2000}
!372 = !{!"auto-init"}
!373 = !{i64 2153479374, i64 2153479858, i64 2153479411, i64 2153479467, i64 2153479501, i64 2153479525, i64 2153479566, i64 2153479587, i64 2153479615, i64 2153479649}
!374 = !{i8 0, i8 2}
