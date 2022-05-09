; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/process.c_pt.bc'
source_filename = "../arch/arm/kernel/process.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__stack_chk_guard\22, \22a\22\09"
module asm "\09.weak\09__crc___stack_chk_guard\09\09\09\09"
module asm "\09.long\09__crc___stack_chk_guard\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___stack_chk_guard:\09\09\09\09\09"
module asm "\09.asciz \09\22__stack_chk_guard\22\09\09\09\09\09"
module asm "__kstrtabns___stack_chk_guard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+thread_notify_head\22, \22a\22\09"
module asm "\09.weak\09__crc_thread_notify_head\09\09\09\09"
module asm "\09.long\09__crc_thread_notify_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thread_notify_head:\09\09\09\09\09"
module asm "\09.asciz \09\22thread_notify_head\22\09\09\09\09\09"
module asm "__kstrtabns_thread_notify_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.svc_pt_regs = type { %struct.pt_regs, i32 }
%struct.pt_regs = type { [18 x i32] }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.stackframe = type { i32, i32, i32, i32, ptr, ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__stack_chk_guard = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab___stack_chk_guard = external dso_local constant [0 x i8], align 1
@__kstrtabns___stack_chk_guard = external dso_local constant [0 x i8], align 1
@__ksymtab___stack_chk_guard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__stack_chk_guard to i32), ptr @__kstrtab___stack_chk_guard, ptr @__kstrtabns___stack_chk_guard }, section "___ksymtab+__stack_chk_guard", align 4
@arm_pm_idle = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__show_regs_alloc_free._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr null }, align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\011Register r%d information:\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__show_regs_alloc_free\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arch/arm/kernel/process.c\00", [38 x i8] zeroinitializer }, align 32
@__show_regs_alloc_free._entry_ptr = internal global ptr @__show_regs_alloc_free._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__show_regs._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 132, ptr null, ptr null }, align 1
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PC is at %pS\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__show_regs\00", [20 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr = internal global ptr @__show_regs._entry, section ".printk_index", align 4
@__show_regs._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 133, ptr null, ptr null }, align 1
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LR is at %pS\0A\00", [18 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.8 = internal global ptr @__show_regs._entry.6, section ".printk_index", align 4
@__show_regs._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 135, ptr null, ptr null }, align 1
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pc : [<%08lx>]    lr : [<%08lx>]    psr: %08lx\0A\00", [48 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.11 = internal global ptr @__show_regs._entry.9, section ".printk_index", align 4
@__show_regs._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 137, ptr null, ptr null }, align 1
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sp : %08lx  ip : %08lx  fp : %08lx\0A\00", [60 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.14 = internal global ptr @__show_regs._entry.12, section ".printk_index", align 4
@__show_regs._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 140, ptr null, ptr null }, align 1
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"r10: %08lx  r9 : %08lx  r8 : %08lx\0A\00", [60 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.17 = internal global ptr @__show_regs._entry.15, section ".printk_index", align 4
@__show_regs._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 143, ptr null, ptr null }, align 1
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\0A\00", [48 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.20 = internal global ptr @__show_regs._entry.18, section ".printk_index", align 4
@__show_regs._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.2, i32 146, ptr null, ptr null }, align 1
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\0A\00", [48 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.23 = internal global ptr @__show_regs._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@__show_regs._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.2, i32 169, ptr null, ptr null }, align 1
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Flags: %s  IRQs o%s  FIQs o%s  Mode %s  ISA %s  Segment %s\0A\00", [36 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.28 = internal global ptr @__show_regs._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ff\00", [29 x i8] zeroinitializer }, align 32
@processor_modes = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [32 x i8] zeroinitializer }, align 32
@isa_modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Table: %08x  DAC: %08x\00", [39 x i8] zeroinitializer }, align 32
@__show_regs._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.2, i32 191, ptr null, ptr null }, align 1
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Control: %08x%s\0A\00", [47 x i8] zeroinitializer }, align 32
@__show_regs._entry_ptr.34 = internal global ptr @__show_regs._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"thread_notify_head.lock\00", [40 x i8] zeroinitializer }, align 32
@thread_notify_head = dso_local global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_thread_notify_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_thread_notify_head = external dso_local constant [0 x i8], align 1
@__ksymtab_thread_notify_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thread_notify_head to i32), ptr @__kstrtab_thread_notify_head, ptr @__kstrtabns_thread_notify_head }, section "___ksymtab_gpl+thread_notify_head", align 4
@__initcall__kmod_process__250_319_gate_vma_init3 = internal global ptr @gate_vma_init, section ".initcall3.init", align 4
@gate_vma = internal global { %struct.vm_area_struct, [32 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[vectors]\00", [22 x i8] zeroinitializer }, align 32
@signal_page = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vdso_total_pages = external dso_local local_unnamed_addr global i32, align 4
@sigpage_mapping = internal constant { %struct.vm_special_mapping, [16 x i8] } { %struct.vm_special_mapping { ptr @.str.73, ptr @signal_page, ptr null, ptr @sigpage_mremap }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USER_26\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FIQ_26\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IRQ_26\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SVC_26\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK4_26\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK5_26\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK6_26\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK7_26\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK8_26\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK9_26\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK10_26\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK11_26\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK12_26\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK13_26\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK14_26\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK15_26\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USER_32\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FIQ_32\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IRQ_32\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SVC_32\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK4_32\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK5_32\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MON_32\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ABT_32\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK8_32\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UK9_32\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HYP_32\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UND_32\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK12_32\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK13_32\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UK14_32\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYS_32\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ARM\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Thumb\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Jazelle\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ThumbEE\00", [24 x i8] zeroinitializer }, align 32
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@pgprot_user = external dso_local local_unnamed_addr global i32, align 4
@vma_init.dummy_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } zeroinitializer, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[sigpage]\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"arm_pm_idle\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 64, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 103, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 130, i32 23 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 132, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 133, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 134, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 136, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 138, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 141, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 144, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 161, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 163, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 165, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"processor_modes\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 49, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"isa_modes\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 56, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 185, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 191, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"thread_notify_head\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 202, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [9 x i8] c"gate_vma\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 308, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 342, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"signal_page\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 378, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"sigpage_mapping\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 388, i32 40 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 25 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 47 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 58 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 69 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 50, i32 80 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 14 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 47 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 58 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 69 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 51, i32 80 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 14 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 25 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 47 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 58 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 69 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 52, i32 80 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 25 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 46 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 57 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 68 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 53, i32 79 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 57, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 57, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 57, i32 21 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 57, i32 32 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"dummy_vm_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 610, i32 43 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [29 x i8] c"../arch/arm/kernel/process.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 389, i32 10 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__initcall__kmod_process__250_319_gate_vma_init3, ptr @__ksymtab___stack_chk_guard, ptr @__ksymtab_thread_notify_head, ptr @__show_regs._entry, ptr @__show_regs._entry.12, ptr @__show_regs._entry.15, ptr @__show_regs._entry.18, ptr @__show_regs._entry.21, ptr @__show_regs._entry.26, ptr @__show_regs._entry.32, ptr @__show_regs._entry.6, ptr @__show_regs._entry.9, ptr @__show_regs._entry_ptr, ptr @__show_regs._entry_ptr.11, ptr @__show_regs._entry_ptr.14, ptr @__show_regs._entry_ptr.17, ptr @__show_regs._entry_ptr.20, ptr @__show_regs._entry_ptr.23, ptr @__show_regs._entry_ptr.28, ptr @__show_regs._entry_ptr.34, ptr @__show_regs._entry_ptr.8, ptr @__show_regs_alloc_free._entry, ptr @__show_regs_alloc_free._entry_ptr, ptr @arm_pm_idle, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @processor_modes, ptr @isa_modes, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @thread_notify_head, ptr @gate_vma, ptr @.str.36, ptr @signal_page, ptr @sigpage_mapping, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @vma_init.dummy_vm_ops, ptr @.str.73], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pm_idle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @processor_modes to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isa_modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_notify_head to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gate_vma to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_page to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigpage_mapping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vma_init.dummy_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arm_pm_idle, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %0() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !154) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_do_idle, align 4
  %call1 = tail call i32 %8() #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !164
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_prepare() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #10, !srcloc !165
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_enter() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ledtrig_cpu(i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  tail call void @arm_heavy_mb() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ledtrig_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ledtrig_cpu(i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__show_regs_alloc_free(ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0) #13
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regs, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call void @mem_dump_obj(ptr noundef %2) #10
  %call.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1) #13
  %arrayidx.1 = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %5 = inttoptr i32 %4 to ptr
  tail call void @mem_dump_obj(ptr noundef %5) #10
  %call.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2) #13
  %arrayidx.2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %8 = inttoptr i32 %7 to ptr
  tail call void @mem_dump_obj(ptr noundef %8) #10
  %call.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3) #13
  %arrayidx.3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %11 = inttoptr i32 %10 to ptr
  tail call void @mem_dump_obj(ptr noundef %11) #10
  %call.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4) #13
  %arrayidx.4 = getelementptr [18 x i32], ptr %regs, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %14 = inttoptr i32 %13 to ptr
  tail call void @mem_dump_obj(ptr noundef %14) #10
  %call.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 5) #13
  %arrayidx.5 = getelementptr [18 x i32], ptr %regs, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %17 = inttoptr i32 %16 to ptr
  tail call void @mem_dump_obj(ptr noundef %17) #10
  %call.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 6) #13
  %arrayidx.6 = getelementptr [18 x i32], ptr %regs, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %20 = inttoptr i32 %19 to ptr
  tail call void @mem_dump_obj(ptr noundef %20) #10
  %call.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 7) #13
  %arrayidx.7 = getelementptr [18 x i32], ptr %regs, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %23 = inttoptr i32 %22 to ptr
  tail call void @mem_dump_obj(ptr noundef %23) #10
  %call.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 8) #13
  %arrayidx.8 = getelementptr [18 x i32], ptr %regs, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.8, align 4
  %26 = inttoptr i32 %25 to ptr
  tail call void @mem_dump_obj(ptr noundef %26) #10
  %call.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 9) #13
  %arrayidx.9 = getelementptr [18 x i32], ptr %regs, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.9, align 4
  %29 = inttoptr i32 %28 to ptr
  tail call void @mem_dump_obj(ptr noundef %29) #10
  %call.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 10) #13
  %arrayidx.10 = getelementptr [18 x i32], ptr %regs, i32 0, i32 10
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.10, align 4
  %32 = inttoptr i32 %31 to ptr
  tail call void @mem_dump_obj(ptr noundef %32) #10
  %call.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 11) #13
  %arrayidx.11 = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %33 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.11, align 4
  %35 = inttoptr i32 %34 to ptr
  tail call void @mem_dump_obj(ptr noundef %35) #10
  %call.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 12) #13
  %arrayidx.12 = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %36 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.12, align 4
  %38 = inttoptr i32 %37 to ptr
  tail call void @mem_dump_obj(ptr noundef %38) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_dump_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__show_regs(ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #10
  %0 = getelementptr inbounds i8, ptr %buf, i32 5
  %1 = call ptr @memset(ptr %0, i32 255, i32 59)
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dacr = getelementptr inbounds %struct.svc_pt_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %dacr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dacr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %domain.0 = phi i32 [ %5, %if.else ], [ 85, %entry.if.end_crit_edge ]
  tail call void @show_regs_print_info(ptr noundef nonnull @.str.3) #10
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = inttoptr i32 %7 to ptr
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8) #13
  %arrayidx9 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  %11 = inttoptr i32 %10 to ptr
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %11) #13
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %15, i32 noundef %17) #13
  %arrayidx27 = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx27, align 4
  %arrayidx29 = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx31, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef %21, i32 noundef %23) #13
  %arrayidx38 = getelementptr [18 x i32], ptr %regs, i32 0, i32 10
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr [18 x i32], ptr %regs, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr [18 x i32], ptr %regs, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx42, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %25, i32 noundef %27, i32 noundef %29) #13
  %arrayidx49 = getelementptr [18 x i32], ptr %regs, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx49, align 4
  %arrayidx51 = getelementptr [18 x i32], ptr %regs, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx51, align 4
  %arrayidx53 = getelementptr [18 x i32], ptr %regs, i32 0, i32 5
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr [18 x i32], ptr %regs, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx55, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #13
  %arrayidx62 = getelementptr [18 x i32], ptr %regs, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx62, align 4
  %arrayidx64 = getelementptr [18 x i32], ptr %regs, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx64, align 4
  %arrayidx66 = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx66, align 4
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %regs, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #13
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool.not = icmp sgt i32 %47, -1
  %conv = select i1 %tobool.not, i8 110, i8 78
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv, ptr %buf, align 1
  %and74 = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %conv77 = select i1 %tobool75.not, i8 122, i8 90
  %arrayidx78 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv77, ptr %arrayidx78, align 1
  %and79 = and i32 %47, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %conv82 = select i1 %tobool80.not, i8 99, i8 67
  %arrayidx83 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv82, ptr %arrayidx83, align 1
  %and84 = and i32 %47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %conv87 = select i1 %tobool85.not, i8 118, i8 86
  %arrayidx88 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv87, ptr %arrayidx88, align 1
  %arrayidx89 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx89, align 1
  %and90 = and i32 %domain.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %cmp91 = icmp eq i32 %and90, 0
  %.str.24..str.25 = select i1 %cmp91, ptr @.str.24, ptr @.str.25
  %and102 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %cond104 = select i1 %tobool103.not, ptr @.str.29, ptr @.str.30
  %and107 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  %cond110 = select i1 %tobool108.not, ptr @.str.29, ptr @.str.30
  %and113 = and i32 %47, 31
  %arrayidx114 = getelementptr [32 x ptr], ptr @processor_modes, i32 0, i32 %and113
  %53 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx114, align 4
  %and117 = lshr i32 %47, 23
  %shr = and i32 %and117, 2
  %and121 = lshr i32 %47, 5
  %shr123 = and i32 %and121, 1
  %or = or i32 %shr, %shr123
  %arrayidx124 = getelementptr [4 x ptr], ptr @isa_modes, i32 0, i32 %or
  %55 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx124, align 4
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %buf, ptr noundef nonnull %cond104, ptr noundef nonnull %cond110, ptr noundef %54, ptr noundef %56, ptr noundef nonnull %.str.24..str.25) #13
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %buf, align 1
  %58 = tail call i32 asm "mrc p15, 0, $0, c2, c0\0A\09", "=r"() #14, !srcloc !167
  %call128 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef %58, i32 noundef %domain.0)
  %59 = tail call i32 asm "mrc p15, 0, $0, c1, c0\0A", "=r"() #14, !srcloc !168
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %59, ptr noundef nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs_print_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @show_regs(ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__show_regs(ptr noundef %regs)
  tail call void @dump_stack() #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_thread(ptr nocapture noundef readonly %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stack = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 1
  %0 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack, align 4
  %call.i = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @thread_notify_head, i32 noundef 1, ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_thread() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @flush_ptrace_hw_breakpoint(ptr noundef %3) #10
  %used_cp = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 7
  %4 = call ptr @memset(ptr %used_cp, i32 0, i32 16)
  %debug = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219, i32 3
  %5 = call ptr @memset(ptr %debug, i32 0, i32 128)
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  %6 = call ptr @memset(ptr %fpstate, i32 0, i32 152)
  %7 = tail call i32 @llvm.read_register.i32(metadata !154) #10
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %tp_value.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %tp_value.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tp_value.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %10 = load i32, ptr @elf_hwcap, align 4
  %and.i.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 3", "r"(i32 0) #10, !srcloc !170
  br label %set_tls.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 -61456)
  store i32 0, ptr inttoptr (i32 -61456 to ptr), align 16
  br label %set_tls.exit.i

set_tls.exit.i:                                   ; preds = %if.else.i.i, %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %11 = load i32, ptr @elf_hwcap, align 4
  %and.i1.i = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.not.i2.i = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.not.i2.i, label %set_tls.exit.i.flush_tls.exit_crit_edge, label %if.then.i3.i

set_tls.exit.i.flush_tls.exit_crit_edge:          ; preds = %set_tls.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush_tls.exit

if.then.i3.i:                                     ; preds = %set_tls.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 2", "r"(i32 0) #10, !srcloc !171
  br label %flush_tls.exit

flush_tls.exit:                                   ; preds = %if.then.i3.i, %set_tls.exit.i.flush_tls.exit_crit_edge
  %call.i = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @thread_notify_head, i32 noundef 0, ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_ptrace_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @release_thread(ptr nocapture noundef %dead_task) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_thread(i32 noundef %clone_flags, i32 noundef %stack_start, i32 noundef %stk_sz, ptr noundef %p, i32 noundef %tls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stack = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 16304
  %cpu_context = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 5
  %2 = call ptr @memset(ptr %cpu_context, i32 0, i32 48)
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2097168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !172

if.then:                                          ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !154)
  %or = or i32 %5, 16383
  %sub = add nsw i32 %or, -7
  %6 = inttoptr i32 %sub to ptr
  %add.ptr6 = getelementptr %struct.pt_regs, ptr %6, i32 -1
  %7 = call ptr @memcpy(ptr %add.ptr2, ptr %add.ptr6, i32 72)
  %8 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_start)
  %tobool7.not = icmp eq i32 %stack_start, 0
  br i1 %tobool7.not, label %if.then.if.end15_crit_edge, label %if.then.if.end15.sink.split_crit_edge

if.then.if.end15.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memset(ptr %add.ptr2, i32 0, i32 72)
  %10 = ptrtoint ptr %cpu_context to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %stk_sz, ptr %cpu_context, align 4
  %r5 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %r5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %stack_start, ptr %r5, align 4
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.else, %if.then.if.end15.sink.split_crit_edge
  %.sink = phi i32 [ 16368, %if.else ], [ 16356, %if.then.if.end15.sink.split_crit_edge ]
  %stack_start.sink = phi i32 [ 19, %if.else ], [ %stack_start, %if.then.if.end15.sink.split_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %1, i32 %.sink
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %stack_start.sink, ptr %arrayidx10, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.then.if.end15_crit_edge
  %pc = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 5, i32 9
  %13 = ptrtoint ptr %pc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 ptrtoint (ptr @ret_from_fork to i32), ptr %pc, align 4
  %14 = ptrtoint ptr %add.ptr2 to i32
  %sp = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 5, i32 8
  %15 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sp, align 4
  tail call void @clear_ptrace_hw_breakpoint(ptr noundef %p) #10
  %and18 = and i32 %clone_flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %tp_value = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %tp_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %tls, ptr %tp_value, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %17 = load i32, ptr @elf_hwcap, align 4
  %and.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end22.get_tpuser.exit_crit_edge, label %if.then.i

if.end22.get_tpuser.exit_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_tpuser.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 2", "=r"() #14, !srcloc !173
  br label %get_tpuser.exit

get_tpuser.exit:                                  ; preds = %if.then.i, %if.end22.get_tpuser.exit_crit_edge
  %reg.0.i = phi i32 [ %18, %if.then.i ], [ 0, %if.end22.get_tpuser.exit_crit_edge ]
  %arrayidx24 = getelementptr %struct.thread_info, ptr %1, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %reg.0.i, ptr %arrayidx24, align 4
  %call.i = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @thread_notify_head, i32 noundef 3, ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ret_from_fork() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_ptrace_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__get_wchan(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  %frame = alloca %struct.stackframe, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frame) #10
  %0 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 3
  %stack = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %frame, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  %5 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack, align 4
  %fp = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fp, align 4
  %9 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %frame, align 4
  %sp = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sp, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %1, align 4
  %pc = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 5, i32 9
  %14 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pc, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %2, align 4
  %17 = ptrtoint ptr %6 to i32
  %add = add i32 %17, 16384
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp = icmp uge i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add)
  %cmp11.not = icmp ult i32 %19, %add
  %or.cond = and i1 %cmp, %cmp11.not
  br i1 %or.cond, label %lor.lhs.false12, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %do.body
  %call = call i32 @unwind_frame(ptr noundef nonnull %frame) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %lor.lhs.false12.cleanup_crit_edge, label %if.end

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %call15 = call i32 @in_sched_functions(i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then16, label %do.cond

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  br label %cleanup

do.cond:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.then16, %lor.lhs.false12.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then16 ], [ 0, %lor.lhs.false12.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unwind_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_sched_functions(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gate_vma_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 2), i32 0, i32 88)
  store ptr @vma_init.dummy_vm_ops, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 12), align 4
  store volatile ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10), ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10), align 4
  store ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10), ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 10, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_user to i32))
  %1 = load i32, ptr @pgprot_user, align 4
  %or = or i32 %1, 384
  store i32 %or, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 7), align 4
  store i32 -65536, ptr @gate_vma, align 4
  store i32 -61440, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 1), align 4
  store i32 85, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 8), align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_gate_vma(ptr nocapture noundef readnone %mm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @gate_vma
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @in_gate_area(ptr nocapture readnone %mm, i32 noundef %addr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gate_vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %addr)
  %cmp.not = icmp ugt i32 %0, %addr
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp1 = icmp ugt i32 %1, %addr
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @in_gate_area_no_mm(i32 noundef %addr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gate_vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %addr)
  %cmp.not.i = icmp ugt i32 %0, %addr
  br i1 %cmp.not.i, label %entry.in_gate_area.exit_crit_edge, label %land.rhs.i

entry.in_gate_area.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %in_gate_area.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr getelementptr inbounds (%struct.vm_area_struct, ptr @gate_vma, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp1.i = icmp ugt i32 %1, %addr
  %phi.cast.i = zext i1 %cmp1.i to i32
  br label %in_gate_area.exit

in_gate_area.exit:                                ; preds = %land.rhs.i, %entry.in_gate_area.exit_crit_edge
  %2 = phi i32 [ 0, %entry.in_gate_area.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @arch_vma_name(ptr noundef readnone %vma) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vma, @gate_vma
  %cond = select i1 %cmp, ptr @.str.36, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_setup_additional_pages(ptr nocapture noundef readnone %bprm, i32 noundef %uses_interp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %6 = load ptr, ptr @signal_page, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @get_signal_page() #10
  store ptr %call2, ptr @signal_page, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vdso_total_pages to i32))
  %7 = load i32, ptr @vdso_total_pages, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@arch_setup_additional_pages, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !174

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end5
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@arch_setup_additional_pages, %if.then.i4.i)) #10
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !174

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #10
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %mmap_write_lock_killable.exit
  %add = add i32 %7, 1
  %start_stack.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 34
  %8 = ptrtoint ptr %start_stack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_stack.i, align 4
  %add.i = add i32 %9, 4095
  %and.i39 = and i32 %add.i, -4096
  %shl.neg.i = mul i32 %add, -4096
  %sub.i = add i32 %shl.neg.i, -1226833920
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %and.i39)
  %cmp.i40 = icmp ult i32 %sub.i, %and.i39
  br i1 %cmp.i40, label %if.end9.sigpage_addr.exit_crit_edge, label %if.end.i

if.end9.sigpage_addr.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigpage_addr.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %and.i39)
  %cmp1.i = icmp eq i32 %sub.i, %and.i39
  br i1 %cmp1.i, label %if.end.i.sigpage_addr.exit_crit_edge, label %if.end3.i

if.end.i.sigpage_addr.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigpage_addr.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub4.i = sub i32 %sub.i, %and.i39
  %shr.i = lshr exact i32 %sub4.i, 12
  %add5.i = add nuw nsw i32 %shr.i, 1
  %call.i.i = tail call i32 @get_random_u32() #10
  %rem.i = urem i32 %call.i.i, %add5.i
  %shl6.i = shl nuw i32 %rem.i, 12
  %add7.i = add i32 %shl6.i, %and.i39
  br label %sigpage_addr.exit

sigpage_addr.exit:                                ; preds = %if.end3.i, %if.end.i.sigpage_addr.exit_crit_edge, %if.end9.sigpage_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %if.end3.i ], [ 0, %if.end9.sigpage_addr.exit_crit_edge ], [ %and.i39, %if.end.i.sigpage_addr.exit_crit_edge ]
  %shl = shl i32 %add, 12
  %call11 = tail call i32 @get_unmapped_area(ptr noundef null, i32 noundef %retval.0.i, i32 noundef %shl, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call11)
  %cmp = icmp ugt i32 %call11, -4096
  br i1 %cmp, label %sigpage_addr.exit.up_fail_crit_edge, label %if.end15, !prof !175

sigpage_addr.exit.up_fail_crit_edge:              ; preds = %sigpage_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %up_fail

if.end15:                                         ; preds = %sigpage_addr.exit
  %call16 = tail call ptr @_install_special_mapping(ptr noundef %5, i32 noundef %call11, i32 noundef 4096, i32 noundef 117, ptr noundef nonnull @sigpage_mapping) #10
  %cmp.i41 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call16 to i32
  br label %up_fail

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %sigpage = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 42, i32 2
  %11 = ptrtoint ptr %sigpage to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call11, ptr %sigpage, align 4
  %add21 = add i32 %call11, 4096
  tail call void @arm_install_vdso(ptr noundef %5, i32 noundef %add21) #10
  br label %up_fail

up_fail:                                          ; preds = %if.end20, %if.then18, %sigpage_addr.exit.up_fail_crit_edge
  %ret.0 = phi i32 [ %10, %if.then18 ], [ 0, %if.end20 ], [ %call11, %sigpage_addr.exit.up_fail_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@arch_setup_additional_pages, %if.then.i.i42)) #10
          to label %mmap_write_unlock.exit [label %if.then.i.i42], !srcloc !174

if.then.i.i42:                                    ; preds = %up_fail
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #10
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i42, %up_fail
  tail call void @up_write(ptr noundef %mmap_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %mmap_write_unlock.exit ], [ -12, %if.end.cleanup_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_signal_page() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_install_special_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_install_vdso(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sigpage_mremap(ptr nocapture noundef readnone %sm, ptr nocapture noundef readonly %new_vma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_vma, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !154) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm, align 8
  %sigpage = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 42, i32 2
  %8 = ptrtoint ptr %sigpage to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %sigpage, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !49, !51, !53, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__ksymtab___stack_chk_guard, !1, !"__ksymtab___stack_chk_guard", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/process.c", i32 46, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/process.c", i32 103, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__show_regs_alloc_free._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @__show_regs_alloc_free._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/process.c", i32 130, i32 23}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/process.c", i32 132, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__show_regs._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @__show_regs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/kernel/process.c", i32 133, i32 2}
!17 = !{ptr @__show_regs._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @__show_regs._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/kernel/process.c", i32 134, i32 2}
!21 = !{ptr @__show_regs._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @__show_regs._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/kernel/process.c", i32 136, i32 2}
!25 = !{ptr @__show_regs._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @__show_regs._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/kernel/process.c", i32 138, i32 2}
!29 = !{ptr @__show_regs._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @__show_regs._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/kernel/process.c", i32 141, i32 2}
!33 = !{ptr @__show_regs._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @__show_regs._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/kernel/process.c", i32 144, i32 2}
!37 = !{ptr @__show_regs._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__show_regs._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/process.c", i32 161, i32 14}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/kernel/process.c", i32 163, i32 14}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/kernel/process.c", i32 165, i32 3}
!45 = !{ptr @__show_regs._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @__show_regs._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/kernel/process.c", i32 185, i32 31}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/kernel/process.c", i32 191, i32 3}
!53 = !{ptr @__show_regs._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @__show_regs._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/kernel/process.c", i32 202, i32 1}
!57 = !{ptr @thread_notify_head, !56, !"thread_notify_head", i1 false, i1 false}
!58 = !{ptr @__ksymtab_thread_notify_head, !59, !"__ksymtab_thread_notify_head", i1 false, i1 false}
!59 = !{!"../arch/arm/kernel/process.c", i32 204, i32 1}
!60 = !{ptr @__initcall__kmod_process__250_319_gate_vma_init3, !61, !"__initcall__kmod_process__250_319_gate_vma_init3", i1 false, i1 false}
!61 = !{!"../arch/arm/kernel/process.c", i32 319, i32 1}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/kernel/process.c", i32 342, i32 28}
!64 = !{ptr @__stack_chk_guard, !65, !"__stack_chk_guard", i1 false, i1 false}
!65 = !{!"../arch/arm/kernel/process.c", i32 45, i32 15}
!66 = !{ptr @arm_pm_idle, !67, !"arm_pm_idle", i1 false, i1 false}
!67 = !{!"../arch/arm/kernel/process.c", i32 64, i32 8}
!68 = !{ptr @gate_vma, !69, !"gate_vma", i1 false, i1 false}
!69 = !{!"../arch/arm/kernel/process.c", i32 308, i32 30}
!70 = !{ptr @signal_page, !71, !"signal_page", i1 false, i1 false}
!71 = !{!"../arch/arm/kernel/process.c", i32 378, i32 21}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/kernel/process.c", i32 50, i32 3}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/kernel/process.c", i32 50, i32 14}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/kernel/process.c", i32 50, i32 25}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/kernel/process.c", i32 50, i32 36}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/kernel/process.c", i32 50, i32 47}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/kernel/process.c", i32 50, i32 58}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/kernel/process.c", i32 50, i32 69}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/kernel/process.c", i32 50, i32 80}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/kernel/process.c", i32 51, i32 3}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/kernel/process.c", i32 51, i32 14}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/kernel/process.c", i32 51, i32 25}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/kernel/process.c", i32 51, i32 36}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../arch/arm/kernel/process.c", i32 51, i32 47}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../arch/arm/kernel/process.c", i32 51, i32 58}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/kernel/process.c", i32 51, i32 69}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/kernel/process.c", i32 51, i32 80}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/kernel/process.c", i32 52, i32 3}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/kernel/process.c", i32 52, i32 14}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../arch/arm/kernel/process.c", i32 52, i32 25}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/kernel/process.c", i32 52, i32 36}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../arch/arm/kernel/process.c", i32 52, i32 47}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../arch/arm/kernel/process.c", i32 52, i32 58}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../arch/arm/kernel/process.c", i32 52, i32 69}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../arch/arm/kernel/process.c", i32 52, i32 80}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../arch/arm/kernel/process.c", i32 53, i32 3}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/kernel/process.c", i32 53, i32 14}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../arch/arm/kernel/process.c", i32 53, i32 25}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/kernel/process.c", i32 53, i32 35}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../arch/arm/kernel/process.c", i32 53, i32 46}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/kernel/process.c", i32 53, i32 57}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../arch/arm/kernel/process.c", i32 53, i32 68}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../arch/arm/kernel/process.c", i32 53, i32 79}
!136 = !{ptr @processor_modes, !137, !"processor_modes", i1 false, i1 false}
!137 = !{!"../arch/arm/kernel/process.c", i32 49, i32 20}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/kernel/process.c", i32 57, i32 3}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../arch/arm/kernel/process.c", i32 57, i32 11}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/kernel/process.c", i32 57, i32 21}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/kernel/process.c", i32 57, i32 32}
!146 = !{ptr @isa_modes, !147, !"isa_modes", i1 false, i1 false}
!147 = !{!"../arch/arm/kernel/process.c", i32 56, i32 20}
!148 = !{ptr @vma_init.dummy_vm_ops, !149, !"dummy_vm_ops", i1 false, i1 false}
!149 = !{!"../include/linux/mm.h", i32 610, i32 43}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../arch/arm/kernel/process.c", i32 389, i32 10}
!152 = !{ptr @sigpage_mapping, !153, !"sigpage_mapping", i1 false, i1 false}
!153 = !{!"../arch/arm/kernel/process.c", i32 388, i32 40}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 822288}
!165 = !{i64 2154927765}
!166 = !{i64 2154927890}
!167 = !{i64 4479, i64 4504}
!168 = !{i64 4635}
!169 = !{i64 2154919685}
!170 = !{i64 7434939}
!171 = !{i64 7435685}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 7435430}
!174 = !{i64 2148241178, i64 2148241183, i64 2148241196, i64 2148241240, i64 2148241274, i64 2148241295}
!175 = !{!"branch_weights", i32 1, i32 2000}
