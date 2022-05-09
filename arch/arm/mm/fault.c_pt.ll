; ModuleID = '/llk/IR_all_yes/arch/arm/mm/fault.c_pt.bc'
source_filename = "../arch/arm/mm/fault.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsr_info = type { ptr, i32, i32, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@show_pte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s[%08lx] *pgd=%08llx\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_pte\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arch/arm/mm/fault.c\00", [44 x i8] zeroinitializer }, align 32
@show_pte._entry_ptr = internal global ptr @show_pte._entry, section ".printk_index", align 4
@show_pte._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c(bad)\00", [24 x i8] zeroinitializer }, align 32
@show_pte._entry_ptr.5 = internal global ptr @show_pte._entry.3, section ".printk_index", align 4
@show_pte._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@show_pte._entry_ptr.7 = internal global ptr @show_pte._entry.6, section ".printk_index", align 4
@show_pte._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@show_pte._entry_ptr.9 = internal global ptr @show_pte._entry.8, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@show_pte._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c, *pte=%08llx\00", [16 x i8] zeroinitializer }, align 32
@show_pte._entry_ptr.12 = internal global ptr @show_pte._entry.10, section ".printk_index", align 4
@show_pte._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c, *ppte=%08llx\00", [47 x i8] zeroinitializer }, align 32
@show_pte._entry_ptr.15 = internal global ptr @show_pte._entry.13, section ".printk_index", align 4
@show_pte._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@show_pte._entry_ptr.18 = internal global ptr @show_pte._entry.16, section ".printk_index", align 4
@fsr_info = internal global { [32 x %struct.fsr_info], [128 x i8] } { [32 x %struct.fsr_info] [%struct.fsr_info { ptr @do_bad, i32 11, i32 0, ptr @.str.41 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 1, ptr @.str.42 }, %struct.fsr_info { ptr @do_bad, i32 9, i32 0, ptr @.str.43 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 1, ptr @.str.42 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.44 }, %struct.fsr_info { ptr @do_translation_fault, i32 11, i32 1, ptr @.str.45 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.44 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 1, ptr @.str.46 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.47 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.48 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.47 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.49 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.50 }, %struct.fsr_info { ptr @do_sect_fault, i32 11, i32 2, ptr @.str.51 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.50 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 2, ptr @.str.52 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.53 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.54 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.55 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.56 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.57 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.58 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 3, ptr @.str.59 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.60 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.61 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.62 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.63 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.64 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.65 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.66 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.67 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.68 }], [128 x i8] zeroinitializer }, align 32
@do_DataAbort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0118<--- cut here ---\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_DataAbort\00", [19 x i8] zeroinitializer }, align 32
@do_DataAbort._entry_ptr = internal global ptr @do_DataAbort._entry, section ".printk_index", align 4
@do_DataAbort._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011Unhandled fault: %s (0x%03x) at 0x%08lx\0A\00", [53 x i8] zeroinitializer }, align 32
@do_DataAbort._entry_ptr.23 = internal global ptr @do_DataAbort._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ifsr_info = internal global { [32 x %struct.fsr_info], [128 x i8] } { [32 x %struct.fsr_info] [%struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.71 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.72 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.73 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.74 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.75 }, %struct.fsr_info { ptr @do_translation_fault, i32 11, i32 1, ptr @.str.45 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.76 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 1, ptr @.str.46 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.47 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.48 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.77 }, %struct.fsr_info { ptr @do_bad, i32 11, i32 2, ptr @.str.49 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.50 }, %struct.fsr_info { ptr @do_sect_fault, i32 11, i32 2, ptr @.str.51 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.50 }, %struct.fsr_info { ptr @do_page_fault, i32 11, i32 2, ptr @.str.52 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.53 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.54 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.55 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.56 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.78 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.58 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.79 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.60 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.80 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.62 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.63 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.64 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.65 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.66 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.67 }, %struct.fsr_info { ptr @do_bad, i32 7, i32 0, ptr @.str.68 }], [128 x i8] zeroinitializer }, align 32
@do_PrefetchAbort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\011Unhandled prefetch abort: %s (0x%03x) at 0x%08lx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_PrefetchAbort\00", [47 x i8] zeroinitializer }, align 32
@do_PrefetchAbort._entry_ptr = internal global ptr @do_PrefetchAbort._entry, section ".printk_index", align 4
@__initcall__kmod_fault__271_623_exceptions_init3 = internal global ptr @exceptions_init, section ".initcall3.init", align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@user_debug = external dso_local local_unnamed_addr global i32, align 4
@__do_user_fault._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 168, ptr null, ptr null }, align 1
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0138<--- cut here ---\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__do_user_fault\00", [16 x i8] zeroinitializer }, align 32
@__do_user_fault._entry_ptr = internal global ptr @__do_user_fault._entry, section ".printk_index", align 4
@__do_user_fault._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 170, ptr null, ptr null }, align 1
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: unhandled page fault (%d) at 0x%08lx, code 0x%03x\0A\00", [39 x i8] zeroinitializer }, align 32
@__do_user_fault._entry_ptr.32 = internal global ptr @__do_user_fault._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@harden_branch_predictor_fn = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NULL pointer dereference\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"paging request\00", [17 x i8] zeroinitializer }, align 32
@die_kernel_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.36, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"die_kernel_fault\00", [47 x i8] zeroinitializer }, align 32
@die_kernel_fault._entry_ptr = internal global ptr @die_kernel_fault._entry, section ".printk_index", align 4
@die_kernel_fault._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\011Unable to handle kernel %s at virtual address %08lx\0A\00", [41 x i8] zeroinitializer }, align 32
@die_kernel_fault._entry_ptr.39 = internal global ptr @die_kernel_fault._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Oops\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vector exception\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alignment exception\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"terminal exception\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"external abort on linefetch\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"section translation fault\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"page translation fault\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"external abort on non-linefetch\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"section domain fault\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"page domain fault\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"external abort on translation\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"section permission fault\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"page permission fault\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 16\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 17\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 18\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 19\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lock abort\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 21\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imprecise external abort\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 23\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dcache parity error\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 25\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 26\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 27\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 28\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 29\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 30\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 31\00", [21 x i8] zeroinitializer }, align 32
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"execution of memory\00", [44 x i8] zeroinitializer }, align 32
@current_kprobe = external dso_local global ptr, section ".data..percpu", align 4
@perf_swevent_enabled = external dso_local global [12 x %struct.static_key], align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unknown 0\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unknown 1\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"debug event\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"section access flag fault\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unknown 4\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"page access flag fault\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 10\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 20\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 22\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown 24\00", [21 x i8] zeroinitializer }, align 32
@early_abort_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\014Hit pending asynchronous external abort (FSR=0x%08x) during first unmask, this is most likely caused by a firmware/bootloader bug.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"early_abort_handler\00", [44 x i8] zeroinitializer }, align 32
@early_abort_handler._entry_ptr = internal global ptr @early_abort_handler._entry, section ".printk_index", align 4
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I-cache maintenance fault\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 42, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 55, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 67, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 79, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 88, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 90, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 96, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [9 x i8] c"fsr_info\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 2, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 542, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 543, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 545, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 547, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant [10 x i8] c"ifsr_info\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 46, i32 24 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 572, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 168, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 169, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 171, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 141, i32 9 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 146, i32 9 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 113, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 114, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 118, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 7, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 8, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 9, i32 26 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 11, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 12, i32 48 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 14, i32 41 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 15, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 16, i32 35 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 18, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 19, i32 26 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 20, i32 41 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 22, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 28, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 29, i32 26 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 30, i32 26 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 31, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 32, i32 26 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 33, i32 26 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 34, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 35, i32 26 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 36, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 37, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 38, i32 26 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 39, i32 26 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 40, i32 26 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 41, i32 26 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 42, i32 26 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 43, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 283, i32 21 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 47, i32 26 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 48, i32 26 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 49, i32 26 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 50, i32 35 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 51, i32 26 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 53, i32 35 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 57, i32 26 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 67, i32 26 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 69, i32 26 }
@___asan_gen_.310 = private unnamed_addr constant [28 x i8] c"../arch/arm/mm/fsr-2level.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 71, i32 26 }
@___asan_gen_.312 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 587, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [23 x i8] c"../arch/arm/mm/fault.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 606, i32 5 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__do_user_fault._entry, ptr @__do_user_fault._entry.30, ptr @__do_user_fault._entry_ptr, ptr @__do_user_fault._entry_ptr.32, ptr @__initcall__kmod_fault__271_623_exceptions_init3, ptr @die_kernel_fault._entry, ptr @die_kernel_fault._entry.37, ptr @die_kernel_fault._entry_ptr, ptr @die_kernel_fault._entry_ptr.39, ptr @do_DataAbort._entry, ptr @do_DataAbort._entry.21, ptr @do_DataAbort._entry_ptr, ptr @do_DataAbort._entry_ptr.23, ptr @do_PrefetchAbort._entry, ptr @do_PrefetchAbort._entry_ptr, ptr @early_abort_handler._entry, ptr @early_abort_handler._entry_ptr, ptr @show_pte._entry, ptr @show_pte._entry.10, ptr @show_pte._entry.13, ptr @show_pte._entry.16, ptr @show_pte._entry.3, ptr @show_pte._entry.6, ptr @show_pte._entry.8, ptr @show_pte._entry_ptr, ptr @show_pte._entry_ptr.12, ptr @show_pte._entry_ptr.15, ptr @show_pte._entry_ptr.18, ptr @show_pte._entry_ptr.5, ptr @show_pte._entry_ptr.7, ptr @show_pte._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @fsr_info, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @ifsr_info, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pte._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pte._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pte._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pte._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pte._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pte._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsr_info to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_DataAbort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_DataAbort._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifsr_info to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_PrefetchAbort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @die_kernel_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @die_kernel_fault._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_abort_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @show_pte(ptr noundef %lvl, ptr noundef readonly %mm, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mm, null
  %spec.store.select = select i1 %tobool.not, ptr @init_mm, ptr %mm
  %pgd1 = getelementptr inbounds %struct.anon, ptr %spec.store.select, i32 0, i32 8
  %0 = ptrtoint ptr %pgd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd1, align 4
  %shr.i = lshr i32 %addr, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %conv = zext i32 %3 to i64
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %lvl, i32 noundef %addr, i64 noundef %conv) #13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool38.not = icmp eq i32 %5, 0
  br i1 %tobool38.not, label %entry.cleanup_crit_edge, label %if.end40

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %entry
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %shr = lshr i32 %5, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %7
  %add.ptr = getelementptr %struct.page, ptr %6, i32 %sub
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %shr.i106 = lshr i32 %9, 30
  %10 = zext i32 %shr.i106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i106, label %if.end48.if.end53_crit_edge [
    i32 2, label %if.end48.cleanup_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

is_highmem_idx.exit:                              ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not = icmp eq i32 %11, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.cleanup_crit_edge, label %is_highmem_idx.exit.if.end53_crit_edge

is_highmem_idx.exit.if.end53_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

is_highmem_idx.exit.cleanup_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %is_highmem_idx.exit.if.end53_crit_edge, %if.end48.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !174
  %17 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i.i1.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !175
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #10
  %shr.i107 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i107, 511
  %add.ptr60 = getelementptr i32, ptr %call.i.i, i32 %and.i
  %23 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr60, align 4
  %conv65 = zext i32 %24 to i64
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %conv65) #13
  %arrayidx71 = getelementptr i32, ptr %add.ptr60, i32 512
  %25 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx71, align 4
  %conv72 = zext i32 %26 to i64
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %conv72) #13
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr60) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !176
  %27 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i.i1.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %32, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !177
  %33 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %is_highmem_idx.exit.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %do.end45, %entry.cleanup_crit_edge
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_bad_area(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__do_user_fault(i32 noundef %addr, i32 noundef %fsr, i32 noundef 11, i32 noundef 1, ptr noundef %regs)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %active_mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_mm, align 4
  tail call fastcc void @__do_kernel_fault(ptr noundef %7, i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__do_user_fault(i32 noundef %addr, i32 noundef %fsr, i32 noundef %sig, i32 noundef %code, ptr noundef %regs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %addr)
  %cmp = icmp ugt i32 %addr, -1226833920
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr @harden_branch_predictor_fn to i32)
  %8 = inttoptr i32 %add.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %10() #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @user_debug to i32))
  %11 = load i32, ptr @user_debug, align 4
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sig)
  %cmp1 = icmp eq i32 %sig, 11
  %or.cond = and i1 %cmp1, %tobool.not
  br i1 %or.cond, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %and2 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp ne i32 %and2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sig)
  %cmp5 = icmp eq i32 %sig, 7
  %or.cond29 = and i1 %cmp5, %tobool3.not
  br i1 %or.cond29, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm, i32 noundef %sig, i32 noundef %addr, i32 noundef %fsr) #13
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %12 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm, align 8
  tail call void @show_pte(ptr noundef nonnull @.str.33, ptr noundef %13, i32 noundef %addr)
  tail call void @show_regs(ptr noundef %regs) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end, %lor.lhs.false.if.end13_crit_edge
  %thread = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219
  %14 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %addr, ptr %thread, align 32
  %error_code = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219, i32 2
  %15 = ptrtoint ptr %error_code to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %fsr, ptr %error_code, align 8
  %trap_no = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219, i32 1
  %16 = ptrtoint ptr %trap_no to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 14, ptr %trap_no, align 4
  %17 = inttoptr i32 %addr to ptr
  %call16 = tail call i32 @force_sig_fault(i32 noundef %sig, i32 noundef %code, ptr noundef %17) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__do_kernel_fault(ptr noundef %mm, i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fixup_exception(ptr noundef %regs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %addr)
  %cmp = icmp ult i32 %addr, 4096
  br i1 %cmp, label %if.end.if.end6_crit_edge, label %if.else

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else:                                          ; preds = %if.end
  %0 = and i32 %fsr, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %0)
  %1 = icmp eq i32 %0, 2048
  %call3 = tail call zeroext i1 @kfence_handle_page_fault(i32 noundef %addr, i1 noundef zeroext %1, ptr noundef %regs) #10
  br i1 %call3, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %msg.0 = phi ptr [ @.str.34, %if.end.if.end6_crit_edge ], [ @.str.35, %if.else.if.end6_crit_edge ]
  tail call void @bust_spinlocks(i32 noundef 1) #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %msg.0, i32 noundef %addr) #13
  tail call void @show_pte(ptr noundef nonnull @.str.24, ptr noundef %mm, i32 noundef %addr) #10
  tail call void @die(ptr noundef nonnull @.str.40, ptr noundef %regs, i32 noundef %fsr) #10
  tail call void @bust_spinlocks(i32 noundef 0) #10
  call void @__asan_handle_no_return()
  tail call void @make_task_dead(i32 noundef 9) #14
  unreachable

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @hook_fault_code(i32 noundef %nr, ptr noundef %fn, i32 noundef %sig, i32 noundef %code, ptr noundef %name) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr)
  %cmp1 = icmp ugt i32 %nr, 31
  br i1 %cmp1, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/fault.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 523, 0\0A.popsection", ""() #10, !srcloc !178
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %nr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %arrayidx, align 4
  %sig6 = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %nr, i32 1
  %1 = ptrtoint ptr %sig6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sig, ptr %sig6, align 4
  %code8 = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %nr, i32 2
  %2 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %code, ptr %code8, align 4
  %name10 = getelementptr [32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 %nr, i32 3
  %3 = ptrtoint ptr %name10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_DataAbort(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %fsr, 15
  %and1.i = lshr i32 %fsr, 6
  %shr.i = and i32 %and1.i, 16
  %or.i = or i32 %shr.i, %and.i
  %add.ptr = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %or.i
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %and = and i32 %fsr, 2147483647
  %call1 = tail call i32 %1(i32 noundef %addr, i32 noundef %and, ptr noundef %regs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  %name = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %or.i, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %3, i32 noundef %fsr, i32 noundef %addr) #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i19 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i19 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 8
  tail call void @show_pte(ptr noundef nonnull @.str.24, ptr noundef %9, i32 noundef %addr)
  %sig = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %or.i, i32 1
  %10 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sig, align 4
  %code = getelementptr %struct.fsr_info, ptr @fsr_info, i32 %or.i, i32 2
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  %14 = inttoptr i32 %addr to ptr
  tail call void @arm_notify_die(ptr noundef nonnull @.str.25, ptr noundef %regs, i32 noundef %11, i32 noundef %13, ptr noundef %14, i32 noundef %fsr, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_notify_die(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @hook_ifault_code(i32 noundef %nr, ptr noundef %fn, i32 noundef %sig, i32 noundef %code, ptr noundef %name) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nr)
  %cmp1 = icmp ugt i32 %nr, 31
  br i1 %cmp1, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/fault.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #10, !srcloc !179
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %nr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %arrayidx, align 4
  %sig6 = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %nr, i32 1
  %1 = ptrtoint ptr %sig6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sig, ptr %sig6, align 4
  %code8 = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %nr, i32 2
  %2 = ptrtoint ptr %code8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %code, ptr %code8, align 4
  %name10 = getelementptr [32 x %struct.fsr_info], ptr @ifsr_info, i32 0, i32 %nr, i32 3
  %3 = ptrtoint ptr %name10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_PrefetchAbort(i32 noundef %addr, i32 noundef %ifsr, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %ifsr, 15
  %and1.i = lshr i32 %ifsr, 6
  %shr.i = and i32 %and1.i, 16
  %or.i = or i32 %shr.i, %and.i
  %add.ptr = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %or.i
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %or = or i32 %ifsr, -2147483648
  %call1 = tail call i32 %1(i32 noundef %addr, i32 noundef %or, ptr noundef %regs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %or.i, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %3, i32 noundef %ifsr, i32 noundef %addr) #13
  %sig = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %or.i, i32 1
  %4 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sig, align 4
  %code = getelementptr %struct.fsr_info, ptr @ifsr_info, i32 %or.i, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  %8 = inttoptr i32 %addr to ptr
  tail call void @arm_notify_die(ptr noundef nonnull @.str.25, ptr noundef %regs, i32 noundef %5, i32 noundef %7, ptr noundef %8, i32 noundef %ifsr, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_abt_enable() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @early_abort_handler, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 22), align 4
  tail call void asm sideeffect "cpsie a\09@ __sta", "~{memory},~{cc}"() #10, !srcloc !180
  store ptr @do_bad, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 22), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_abort_handler(i32 noundef %addr, i32 noundef %fsr, ptr nocapture noundef readnone %regs) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %fsr) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @do_bad(i32 noundef %addr, i32 noundef %fsr, ptr nocapture noundef readnone %regs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exceptions_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_architecture() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp = icmp sgt i32 %call, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @do_translation_fault, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4), align 4
  store i32 11, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4, i32 2), align 4
  store ptr @.str.83, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 4, i32 3), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @cpu_architecture() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 8
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @do_bad, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3), align 4
  store i32 11, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3, i32 2), align 4
  store ptr @.str.74, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 3, i32 3), align 4
  store ptr @do_bad, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6), align 4
  store i32 11, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6, i32 2), align 4
  store ptr @.str.74, ptr getelementptr inbounds ([32 x %struct.fsr_info], ptr @fsr_info, i32 0, i32 6, i32 3), align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_exception(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kfence_handle_page_fault(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @die_kernel_fault(ptr noundef %msg, ptr noundef %mm, i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bust_spinlocks(i32 noundef 1) #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %msg, i32 noundef %addr) #13
  tail call void @show_pte(ptr noundef nonnull @.str.24, ptr noundef %mm, i32 noundef %addr)
  tail call void @die(ptr noundef nonnull @.str.40, ptr noundef %regs, i32 noundef %fsr) #10
  tail call void @bust_spinlocks(i32 noundef 0) #10
  call void @__asan_handle_no_return()
  tail call void @make_task_dead(i32 noundef 9) #14
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @make_task_dead(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_translation_fault(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %addr)
  %cmp = icmp ult i32 %addr, -1226833920
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @do_page_fault(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs)
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then.i, label %if.end3

if.end3:                                          ; preds = %if.end
  %shr = lshr i32 %addr, 21
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c2, c0, 0", "=r,~{cc}"() #16, !srcloc !181
  %and5 = and i32 %2, -16384
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and5, i32 -2130706432, i32 8454144) #16, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr7 = getelementptr [2 x i32], ptr %4, i32 %shr
  %shr39 = lshr i32 %addr, 20
  %and40 = and i32 %shr39, 1
  %arrayidx41 = getelementptr i32, ptr %add.ptr7, i32 %and40
  %5 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool42.not = icmp eq i32 %6, 0
  br i1 %tobool42.not, label %if.else.i, label %do.body

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %7 = inttoptr i32 %3 to ptr
  %add.ptr = getelementptr [2 x i32], ptr %7, i32 %shr
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr7, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr, align 4
  %arrayidx47 = getelementptr i32, ptr %add.ptr7, i32 1
  %11 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr i32, ptr %add.ptr, i32 1
  %13 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx48, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %14 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr, i32 %14, i32 1073741824) #10, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__do_user_fault(i32 noundef %addr, i32 noundef %fsr, i32 noundef 11, i32 noundef 1, ptr noundef %regs) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %active_mm.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 54
  %19 = ptrtoint ptr %active_mm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %active_mm.i, align 4
  tail call fastcc void @__do_kernel_fault(ptr noundef %20, i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %do.body, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_page_fault(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i158 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i158 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !185
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i21.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i21.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %16, ptrtoint (ptr @current_kprobe to i32)
  %17 = inttoptr i32 %add.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool15.not.i = icmp eq ptr %19, null
  br i1 %tobool15.not.i, label %if.end13.i.if.end_crit_edge, label %kprobe_page_fault.exit

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

kprobe_page_fault.exit:                           ; preds = %if.end13.i
  %call18.i = tail call i32 @kprobe_fault_handler(ptr noundef %regs, i32 noundef %fsr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.i.not = icmp eq i32 %call18.i, 0
  br i1 %tobool19.i.not, label %kprobe_page_fault.exit.if.end_crit_edge, label %kprobe_page_fault.exit.cleanup_crit_edge

kprobe_page_fault.exit.cleanup_crit_edge:         ; preds = %kprobe_page_fault.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

kprobe_page_fault.exit.if.end_crit_edge:          ; preds = %kprobe_page_fault.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %kprobe_page_fault.exit.if.end_crit_edge, %if.end13.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !186
  br label %if.end4

if.end4:                                          ; preds = %do.body, %if.end.if.end4_crit_edge
  %22 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i159 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i159 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i160.not = icmp eq i32 %27, 0
  br i1 %cmp.i160.not, label %lor.lhs.false, label %if.end4.no_context_crit_edge

if.end4.no_context_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_context

lor.lhs.false:                                    ; preds = %if.end4
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not = icmp ne i32 %29, 0
  %tobool8.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %lor.lhs.false.no_context_crit_edge, label %if.end10

lor.lhs.false.no_context_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_context

if.end10:                                         ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %and13 = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 0
  %spec.select = select i1 %cmp14, i32 596, i32 532
  %32 = and i32 %fsr, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %32)
  %33 = icmp eq i32 %32, 2048
  %or19 = zext i1 %33 to i32
  %flags.1 = or i32 %spec.select, %or19
  %vm_flags.0 = select i1 %33, i32 2, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fsr)
  %tobool22.not = icmp sgt i32 %fsr, -1
  br i1 %tobool22.not, label %if.end10.if.end31_crit_edge, label %if.then23

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then23:                                        ; preds = %if.end10
  %and.i.i161 = and i32 %fsr, 15
  %and1.i.i = lshr i32 %fsr, 6
  %shr.i.i = and i32 %and1.i.i, 16
  %or.i.i = add nsw i32 %and.i.i161, -13
  %34 = add nsw i32 %or.i.i, %shr.i.i
  %switch.and.i = and i32 %34, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp ne i32 %switch.and.i, 0
  %brmerge = select i1 %switch.selectcmp.i, i1 true, i1 %cmp14
  br i1 %brmerge, label %if.then23.if.end31_crit_edge, label %if.then29

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @die_kernel_fault(ptr noundef nonnull @.str.69, ptr noundef nonnull %5, i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs)
  unreachable

if.end31:                                         ; preds = %if.then23.if.end31_crit_edge, %if.end10.if.end31_crit_edge
  %vm_flags.1 = phi i32 [ 4, %if.then23.if.end31_crit_edge ], [ %vm_flags.0, %if.end10.if.end31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 2), ptr blockaddress(@do_page_fault, %if.then.i)) #10
          to label %perf_sw_event.exit [label %if.then.i], !srcloc !187

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %addr to i64
  tail call void @__perf_sw_event(i32 noundef 2, i64 noundef 1, ptr noundef %regs, i64 noundef %conv) #10
  br label %perf_sw_event.exit

perf_sw_event.exit:                               ; preds = %if.then.i, %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@do_page_fault, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !187

if.then.i.i:                                      ; preds = %perf_sw_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %5, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %perf_sw_event.exit
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_read_trylock(ptr noundef %mmap_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i162 = icmp ne i32 %call.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@do_page_fault, %if.then.i5.i)) #10
          to label %mmap_read_trylock.exit [label %if.then.i5.i], !srcloc !187

if.then.i5.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i162) #10
  br label %mmap_read_trylock.exit

mmap_read_trylock.exit:                           ; preds = %if.then.i5.i, %__mmap_lock_trace_start_locking.exit.i
  br i1 %cmp.i162, label %do.body46, label %if.then33

if.then33:                                        ; preds = %mmap_read_trylock.exit
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %and36 = and i32 %36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then33.retry_crit_edge, label %land.lhs.true39

if.then33.retry_crit_edge:                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

land.lhs.true39:                                  ; preds = %if.then33
  %arrayidx41 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %37 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx41, align 4
  %call42 = tail call ptr @search_exception_tables(i32 noundef %38) #10
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %land.lhs.true39.no_context_crit_edge, label %land.lhs.true39.retry_crit_edge

land.lhs.true39.retry_crit_edge:                  ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

land.lhs.true39.no_context_crit_edge:             ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_context

retry:                                            ; preds = %if.then81, %land.lhs.true39.retry_crit_edge, %if.then33.retry_crit_edge
  %flags.2 = phi i32 [ %or82, %if.then81 ], [ %flags.1, %if.then33.retry_crit_edge ], [ %flags.1, %land.lhs.true39.retry_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@do_page_fault, %if.then.i.i163)) #10
          to label %__mmap_lock_trace_start_locking.exit.i165 [label %if.then.i.i163], !srcloc !187

if.then.i.i163:                                   ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i165

__mmap_lock_trace_start_locking.exit.i165:        ; preds = %if.then.i.i163, %retry
  tail call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@do_page_fault, %if.then.i3.i)) #10
          to label %if.end64 [label %if.then.i3.i], !srcloc !187

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %if.end64

do.body46:                                        ; preds = %mmap_read_trylock.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 305) #10
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %and54 = and i32 %40, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %do.body46.if.end64_crit_edge, label %land.lhs.true57

do.body46.if.end64_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

land.lhs.true57:                                  ; preds = %do.body46
  %arrayidx59 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %41 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx59, align 4
  %call60 = tail call ptr @search_exception_tables(i32 noundef %42) #10
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %land.lhs.true57.no_context_crit_edge, label %land.lhs.true57.if.end64_crit_edge

land.lhs.true57.if.end64_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

land.lhs.true57.no_context_crit_edge:             ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_context

if.end64:                                         ; preds = %land.lhs.true57.if.end64_crit_edge, %do.body46.if.end64_crit_edge, %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i165
  %flags.3 = phi i32 [ %flags.2, %__mmap_lock_trace_start_locking.exit.i165 ], [ %flags.2, %if.then.i3.i ], [ %flags.1, %land.lhs.true57.if.end64_crit_edge ], [ %flags.1, %do.body46.if.end64_crit_edge ]
  %call.i166 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %addr) #10
  %tobool.not.i167 = icmp eq ptr %call.i166, null
  br i1 %tobool.not.i167, label %if.end64.if.end84_crit_edge, label %if.end.i169, !prof !188

if.end64.if.end84_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end.i169:                                      ; preds = %if.end64
  %43 = ptrtoint ptr %call.i166 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call.i166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %addr)
  %cmp.i168 = icmp ugt i32 %44, %addr
  br i1 %cmp.i168, label %if.then10.i, label %if.end.i169.if.end21.i_crit_edge, !prof !188

if.end.i169.if.end21.i_crit_edge:                 ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then10.i:                                      ; preds = %if.end.i169
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i166, i32 0, i32 8
  %45 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vm_flags.i, align 4
  %and.i170 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170)
  %tobool11.not.i = icmp eq i32 %and.i170, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %addr)
  %cmp14.i = icmp ult i32 %addr, 8192
  %or.cond.i = or i1 %cmp14.i, %tobool11.not.i
  br i1 %or.cond.i, label %if.then10.i.if.end84_crit_edge, label %if.end16.i

if.then10.i.if.end84_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end16.i:                                       ; preds = %if.then10.i
  %call17.i = tail call i32 @expand_stack(ptr noundef nonnull %call.i166, i32 noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.end16.i.if.end84_crit_edge

if.end16.i.if.end84_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end16.i.if.end21.i_crit_edge, %if.end.i169.if.end21.i_crit_edge
  %vm_flags22.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i166, i32 0, i32 8
  %47 = ptrtoint ptr %vm_flags22.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_flags22.i, align 4
  %and23.i = and i32 %48, %vm_flags.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end84_crit_edge, label %__do_page_fault.exit

if.end21.i.if.end84_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

__do_page_fault.exit:                             ; preds = %if.end21.i
  %and27.i = and i32 %addr, -4096
  %call28.i = tail call i32 @handle_mm_fault(ptr noundef nonnull %call.i166, i32 noundef %and27.i, i32 noundef %flags.3, ptr noundef %regs) #10
  %and.i172 = and i32 %call28.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool.not.i173 = icmp eq i32 %and.i172, 0
  br i1 %tobool.not.i173, label %__do_page_fault.exit.if.end84_crit_edge, label %land.rhs.i

__do_page_fault.exit.if.end84_crit_edge:          ; preds = %__do_page_fault.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.rhs.i:                                       ; preds = %__do_page_fault.exit
  %49 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i174 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i174 to ptr
  %task.i175 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i175 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i175, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stack.i.i.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and1.i.i.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.lor.rhs.i_crit_edge, label %fatal_signal_pending.exit.i

land.rhs.i.lor.rhs.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

fatal_signal_pending.exit.i:                      ; preds = %land.rhs.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 116, i32 1
  %57 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %signal.i.i.i, align 4
  %59 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool2.not.i = icmp eq i32 %59, 0
  br i1 %tobool2.not.i, label %fatal_signal_pending.exit.i.lor.rhs.i_crit_edge, label %fatal_signal_pending.exit.i.if.then67_crit_edge

fatal_signal_pending.exit.i.if.then67_crit_edge:  ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

fatal_signal_pending.exit.i.lor.rhs.i_crit_edge:  ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %fatal_signal_pending.exit.i.lor.rhs.i_crit_edge, %land.rhs.i.lor.rhs.i_crit_edge
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %and3.i = and i32 %61, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.i177 = icmp eq i32 %and3.i, 0
  br i1 %cmp.i177, label %land.rhs4.i, label %lor.rhs.i.if.end75_crit_edge

lor.rhs.i.if.end75_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.rhs4.i:                                      ; preds = %lor.rhs.i
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %54, align 4
  %64 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i12.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i12.i, label %fault_signal_pending.exit, label %land.rhs4.i.if.then67_crit_edge, !prof !189

land.rhs4.i.if.then67_crit_edge:                  ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

fault_signal_pending.exit:                        ; preds = %land.rhs4.i
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %54, align 4
  %and1.i.i.i.i.i13.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i13.i)
  %phi.cmp.i.not = icmp eq i32 %and1.i.i.i.i.i13.i, 0
  br i1 %phi.cmp.i.not, label %fault_signal_pending.exit.if.end75_crit_edge, label %fault_signal_pending.exit.if.then67_crit_edge

fault_signal_pending.exit.if.then67_crit_edge:    ; preds = %fault_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

fault_signal_pending.exit.if.end75_crit_edge:     ; preds = %fault_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then67:                                        ; preds = %fault_signal_pending.exit.if.then67_crit_edge, %land.rhs4.i.if.then67_crit_edge, %fatal_signal_pending.exit.i.if.then67_crit_edge
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i, align 4
  %and70 = and i32 %68, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %cmp71 = icmp eq i32 %and70, 0
  br i1 %cmp71, label %if.then67.cleanup_crit_edge, label %if.then67.no_context_crit_edge

if.then67.no_context_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_context

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end75:                                         ; preds = %fault_signal_pending.exit.if.end75_crit_edge, %lor.rhs.i.if.end75_crit_edge
  %and76 = and i32 %call28.i, 2163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not.not, label %if.then81, label %if.end75.if.end84_crit_edge

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %or82 = or i32 %flags.3, 32
  br label %retry

if.end84:                                         ; preds = %if.end75.if.end84_crit_edge, %__do_page_fault.exit.if.end84_crit_edge, %if.end21.i.if.end84_crit_edge, %if.end16.i.if.end84_crit_edge, %if.then10.i.if.end84_crit_edge, %if.end64.if.end84_crit_edge
  %retval.0.i171184189199 = phi i32 [ %call28.i, %if.end75.if.end84_crit_edge ], [ 65536, %if.end64.if.end84_crit_edge ], [ 65536, %if.then10.i.if.end84_crit_edge ], [ 65536, %if.end16.i.if.end84_crit_edge ], [ 131072, %if.end21.i.if.end84_crit_edge ], [ %call28.i, %__do_page_fault.exit.if.end84_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@do_page_fault, %if.then.i.i178)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i178], !srcloc !187

if.then.i.i178:                                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i178, %if.end84
  tail call void @up_read(ptr noundef %mmap_lock.i) #10
  %and85 = and i32 %retval.0.i171184189199, 198771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %mmap_read_unlock.exit.cleanup_crit_edge, label %if.end91, !prof !189

mmap_read_unlock.exit.cleanup_crit_edge:          ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end91:                                         ; preds = %mmap_read_unlock.exit
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %and94 = and i32 %70, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %cmp95 = icmp eq i32 %and94, 0
  br i1 %cmp95, label %if.end98, label %if.end91.no_context_crit_edge

if.end91.no_context_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_context

if.end98:                                         ; preds = %if.end91
  %and99 = and i32 %retval.0.i171184189199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pagefault_out_of_memory() #10
  br label %cleanup

if.end102:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %and103 = and i32 %retval.0.i171184189199, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %retval.0.i171184189199)
  %cmp107 = icmp eq i32 %retval.0.i171184189199, 131072
  %cond = select i1 %cmp107, i32 2, i32 1
  %sig.0 = select i1 %tobool104.not, i32 11, i32 7
  %code.0 = select i1 %tobool104.not, i32 %cond, i32 2
  tail call fastcc void @__do_user_fault(i32 noundef %addr, i32 noundef %fsr, i32 noundef %sig.0, i32 noundef %code.0, ptr noundef %regs)
  br label %cleanup

no_context:                                       ; preds = %if.end91.no_context_crit_edge, %if.then67.no_context_crit_edge, %land.lhs.true57.no_context_crit_edge, %land.lhs.true39.no_context_crit_edge, %lor.lhs.false.no_context_crit_edge, %if.end4.no_context_crit_edge
  tail call fastcc void @__do_kernel_fault(ptr noundef %5, i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs)
  br label %cleanup

cleanup:                                          ; preds = %no_context, %if.end102, %if.then101, %mmap_read_unlock.exit.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %kprobe_page_fault.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_sect_fault(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__do_user_fault(i32 noundef %addr, i32 noundef %fsr, i32 noundef 11, i32 noundef 1, ptr noundef %regs) #10
  br label %do_bad_area.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !164) #10
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %active_mm.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %active_mm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_mm.i, align 4
  tail call fastcc void @__do_kernel_fault(ptr noundef %7, i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #10
  br label %do_bad_area.exit

do_bad_area.exit:                                 ; preds = %if.else.i, %if.then.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_exception_tables(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagefault_out_of_memory() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kprobe_fault_handler(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__perf_sw_event(i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @expand_stack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !161, !162}
!llvm.named.register.sp = !{!164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/fault.c", i32 42, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @show_pte._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @show_pte._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/fault.c", i32 55, i32 4}
!8 = !{ptr @show_pte._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @show_pte._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @show_pte._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/fault.c", i32 67, i32 4}
!12 = !{ptr @show_pte._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @show_pte._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../arch/arm/mm/fault.c", i32 79, i32 4}
!15 = !{ptr @show_pte._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/fault.c", i32 88, i32 3}
!18 = !{ptr @show_pte._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @show_pte._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mm/fault.c", i32 90, i32 3}
!22 = !{ptr @show_pte._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @show_pte._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mm/fault.c", i32 96, i32 2}
!26 = !{ptr @show_pte._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @show_pte._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mm/fault.c", i32 542, i32 2}
!30 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @do_DataAbort._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @do_DataAbort._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mm/fault.c", i32 543, i32 2}
!35 = !{ptr @do_DataAbort._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @do_DataAbort._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mm/fault.c", i32 545, i32 11}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mm/fault.c", i32 547, i32 17}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mm/fault.c", i32 572, i32 2}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @do_PrefetchAbort._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @do_PrefetchAbort._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__initcall__kmod_fault__271_623_exceptions_init3, !47, !"__initcall__kmod_fault__271_623_exceptions_init3", i1 false, i1 false}
!47 = !{!"../arch/arm/mm/fault.c", i32 623, i32 1}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mm/fault.c", i32 168, i32 3}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__do_user_fault._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @__do_user_fault._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mm/fault.c", i32 169, i32 3}
!55 = !{ptr @__do_user_fault._entry.30, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @__do_user_fault._entry_ptr.32, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mm/fault.c", i32 171, i32 12}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mm/fault.c", i32 141, i32 9}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mm/fault.c", i32 146, i32 9}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mm/fault.c", i32 113, i32 2}
!65 = !{ptr @die_kernel_fault._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @die_kernel_fault._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/mm/fault.c", i32 114, i32 2}
!69 = !{ptr @die_kernel_fault._entry.37, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @die_kernel_fault._entry_ptr.39, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mm/fault.c", i32 118, i32 6}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/mm/fsr-2level.c", i32 7, i32 26}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/mm/fsr-2level.c", i32 8, i32 34}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mm/fsr-2level.c", i32 9, i32 26}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/mm/fsr-2level.c", i32 11, i32 26}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/mm/fsr-2level.c", i32 12, i32 48}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mm/fsr-2level.c", i32 14, i32 41}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/mm/fsr-2level.c", i32 15, i32 26}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mm/fsr-2level.c", i32 16, i32 35}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mm/fsr-2level.c", i32 18, i32 35}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mm/fsr-2level.c", i32 19, i32 26}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../arch/arm/mm/fsr-2level.c", i32 20, i32 41}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/mm/fsr-2level.c", i32 22, i32 41}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/mm/fsr-2level.c", i32 28, i32 26}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/mm/fsr-2level.c", i32 29, i32 26}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../arch/arm/mm/fsr-2level.c", i32 30, i32 26}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/mm/fsr-2level.c", i32 31, i32 26}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../arch/arm/mm/fsr-2level.c", i32 32, i32 26}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../arch/arm/mm/fsr-2level.c", i32 33, i32 26}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../arch/arm/mm/fsr-2level.c", i32 34, i32 34}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../arch/arm/mm/fsr-2level.c", i32 35, i32 26}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../arch/arm/mm/fsr-2level.c", i32 36, i32 26}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../arch/arm/mm/fsr-2level.c", i32 37, i32 26}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../arch/arm/mm/fsr-2level.c", i32 38, i32 26}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mm/fsr-2level.c", i32 39, i32 26}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../arch/arm/mm/fsr-2level.c", i32 40, i32 26}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../arch/arm/mm/fsr-2level.c", i32 41, i32 26}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../arch/arm/mm/fsr-2level.c", i32 42, i32 26}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../arch/arm/mm/fsr-2level.c", i32 43, i32 26}
!129 = !{ptr @fsr_info, !130, !"fsr_info", i1 false, i1 false}
!130 = !{!"../arch/arm/mm/fsr-2level.c", i32 2, i32 24}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../arch/arm/mm/fault.c", i32 283, i32 21}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/kprobes.h", i32 373, i32 9}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../arch/arm/mm/fsr-2level.c", i32 47, i32 26}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../arch/arm/mm/fsr-2level.c", i32 48, i32 26}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../arch/arm/mm/fsr-2level.c", i32 49, i32 26}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../arch/arm/mm/fsr-2level.c", i32 50, i32 35}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../arch/arm/mm/fsr-2level.c", i32 51, i32 26}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../arch/arm/mm/fsr-2level.c", i32 53, i32 35}
!147 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../arch/arm/mm/fsr-2level.c", i32 57, i32 26}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../arch/arm/mm/fsr-2level.c", i32 67, i32 26}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../arch/arm/mm/fsr-2level.c", i32 69, i32 26}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../arch/arm/mm/fsr-2level.c", i32 71, i32 26}
!155 = !{ptr @ifsr_info, !156, !"ifsr_info", i1 false, i1 false}
!156 = !{!"../arch/arm/mm/fsr-2level.c", i32 46, i32 24}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../arch/arm/mm/fault.c", i32 587, i32 2}
!159 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @early_abort_handler._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @early_abort_handler._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../arch/arm/mm/fault.c", i32 606, i32 5}
!164 = !{!"sp"}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2154099258}
!175 = !{i64 2152742391}
!176 = !{i64 2152742598}
!177 = !{i64 2154102029}
!178 = !{i64 2154920194, i64 2154920678, i64 2154920231, i64 2154920287, i64 2154920321, i64 2154920345, i64 2154920386, i64 2154920407, i64 2154920435, i64 2154920469}
!179 = !{i64 2154925495, i64 2154925979, i64 2154925532, i64 2154925588, i64 2154925622, i64 2154925646, i64 2154925687, i64 2154925708, i64 2154925736, i64 2154925770}
!180 = !{i64 2154931438}
!181 = !{i64 2154914929}
!182 = !{i64 2149150586, i64 2149150609, i64 2149150641, i64 2149150673, i64 2149150711, i64 2149150741}
!183 = !{i64 2152137861, i64 2152137874}
!184 = !{i64 2152144027}
!185 = !{i64 873196}
!186 = !{i64 870709}
!187 = !{i64 2148175084, i64 2148175089, i64 2148175102, i64 2148175146, i64 2148175180, i64 2148175201}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{!"branch_weights", i32 2000, i32 1}
