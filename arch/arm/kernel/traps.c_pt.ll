; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/traps.c_pt.bc'
source_filename = "../arch/arm/kernel/traps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__readwrite_bug\22, \22a\22\09"
module asm "\09.weak\09__crc___readwrite_bug\09\09\09\09"
module asm "\09.long\09__crc___readwrite_bug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___readwrite_bug:\09\09\09\09\09"
module asm "\09.asciz \09\22__readwrite_bug\22\09\09\09\09\09"
module asm "__kstrtabns___readwrite_bug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__div0\22, \22a\22\09"
module asm "\09.weak\09__crc___div0\09\09\09\09"
module asm "\09.long\09__crc___div0\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___div0:\09\09\09\09\09"
module asm "\09.asciz \09\22__div0\22\09\09\09\09\09"
module asm "__kstrtabns___div0:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__raw_tickets = type { i16, i16 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }

@__setup_str_user_debug_setup = internal constant [12 x i8] c"user_debug=\00", section ".init.rodata", align 1
@__setup_user_debug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_user_debug_setup, ptr @user_debug_setup, i32 0 }, section ".init.setup", align 4
@dump_backtrace_entry._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, align 1
@.str = private unnamed_addr constant [40 x i8] c"%s[<%08lx>] (%ps) from [<%08lx>] (%pS)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"dump_backtrace_entry\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"arch/arm/kernel/traps.c\00", align 1
@dump_backtrace_entry._entry_ptr = internal global ptr @dump_backtrace_entry._entry, section ".printk_index", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Exception stack\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" r%d:%08x\00", align 1
@dump_backtrace_stm._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 97, ptr null, ptr null }, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"dump_backtrace_stm\00", align 1
@dump_backtrace_stm._entry_ptr = internal global ptr @dump_backtrace_stm._entry, section ".printk_index", align 4
@dump_backtrace_stm._entry.7 = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 102, ptr null, ptr null }, align 1
@dump_backtrace_stm._entry_ptr.8 = internal global ptr @dump_backtrace_stm._entry.7, section ".printk_index", align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"Oops - BUG\00", align 1
@undef_lock = internal global %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 2, i8 0, i32 0, i32 0 } }, align 4
@undef_hook = internal global %struct.list_head { ptr @undef_hook, ptr @undef_hook }, align 4
@user_debug = dso_local global i32 0, align 4
@do_undefinstr._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 477, ptr null, ptr null }, align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\016%s (%d): undefined instruction: pc=%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"do_undefinstr\00", align 1
@do_undefinstr._entry_ptr = internal global ptr @do_undefinstr._entry, section ".printk_index", align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Oops - undefined instruction\00", align 1
@_kbl_addr_do_undefinstr = internal global i32 ptrtoint (ptr @do_undefinstr to i32), section "_kprobe_blacklist", align 4
@hardirq_context = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bad_mode._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 522, ptr null, ptr null }, align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\012Bad mode in %s handler detected\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"bad_mode\00", align 1
@bad_mode._entry_ptr = internal global ptr @bad_mode._entry, section ".printk_index", align 4
@handler = internal unnamed_addr constant [5 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"Oops - bad mode\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"bad mode\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"branch through zero\00", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@arm_syscall._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 659, ptr null, ptr null }, align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\013[%d] %s: arm syscall %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"arm_syscall\00", align 1
@arm_syscall._entry_ptr = internal global ptr @arm_syscall._entry, section ".printk_index", align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Oops - bad syscall(2)\00", align 1
@baddataabort._entry = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 723, ptr null, ptr null }, align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\0138<--- cut here ---\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"baddataabort\00", align 1
@baddataabort._entry_ptr = internal global ptr @baddataabort._entry, section ".printk_index", align 4
@baddataabort._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 725, ptr null, ptr null }, align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"\013[%d] %s: bad data abort: code %d instr 0x%08lx\0A\00", align 1
@baddataabort._entry_ptr.29 = internal global ptr @baddataabort._entry.27, section ".printk_index", align 4
@.str.30 = private unnamed_addr constant [24 x i8] c"unknown data abort code\00", align 1
@__readwrite_bug._entry = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 737, ptr null, ptr null }, align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"\013%s called, but not implemented\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"__readwrite_bug\00", align 1
@__readwrite_bug._entry_ptr = internal global ptr @__readwrite_bug._entry, section ".printk_index", align 4
@__kstrtab___readwrite_bug = external dso_local constant [0 x i8], align 1
@__kstrtabns___readwrite_bug = external dso_local constant [0 x i8], align 1
@__ksymtab___readwrite_bug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__readwrite_bug to i32), ptr @__kstrtab___readwrite_bug, ptr @__kstrtabns___readwrite_bug }, section "___ksymtab+__readwrite_bug", align 4
@__pte_error._entry = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 744, ptr null, ptr null }, align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"\013%s:%d: bad pte %08llx.\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"__pte_error\00", align 1
@__pte_error._entry_ptr = internal global ptr @__pte_error._entry, section ".printk_index", align 4
@__pmd_error._entry = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 749, ptr null, ptr null }, align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"\013%s:%d: bad pmd %08llx.\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"__pmd_error\00", align 1
@__pmd_error._entry_ptr = internal global ptr @__pmd_error._entry, section ".printk_index", align 4
@__pgd_error._entry = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 754, ptr null, ptr null }, align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"\013%s:%d: bad pgd %08llx.\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"__pgd_error\00", align 1
@__pgd_error._entry_ptr = internal global ptr @__pgd_error._entry, section ".printk_index", align 4
@__div0._entry = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 759, ptr null, ptr null }, align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"\013Division by zero in kernel.\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"__div0\00", align 1
@__div0._entry_ptr = internal global ptr @__div0._entry, section ".printk_index", align 4
@__kstrtab___div0 = external dso_local constant [0 x i8], align 1
@__kstrtabns___div0 = external dso_local constant [0 x i8], align 1
@__ksymtab___div0 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__div0 to i32), ptr @__kstrtab___div0, ptr @__kstrtabns___div0 }, section "___ksymtab+__div0", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@spectre_bhb_update_vectors._entry = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 816, ptr null, ptr null }, align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"\013CPU%u: Spectre BHB workaround too late - system vulnerable\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"spectre_bhb_update_vectors\00", align 1
@spectre_bhb_update_vectors._entry_ptr = internal global ptr @spectre_bhb_update_vectors._entry, section ".printk_index", align 4
@__vectors_bhb_loop8_start = external dso_local global [0 x i8], align 1
@__vectors_bhb_loop8_end = external dso_local global [0 x i8], align 1
@__vectors_bhb_bpiall_start = external dso_local global [0 x i8], align 1
@__vectors_bhb_bpiall_end = external dso_local global [0 x i8], align 1
@spectre_bhb_update_vectors._entry.44 = internal constant %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 833, ptr null, ptr null }, align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"\013CPU%u: unknown Spectre BHB state %d\0A\00", align 1
@spectre_bhb_update_vectors._entry_ptr.46 = internal global ptr @spectre_bhb_update_vectors._entry.44, section ".printk_index", align 4
@vectors_page = dso_local local_unnamed_addr global ptr null, align 4
@__vectors_start = external dso_local global [0 x i8], align 1
@__vectors_end = external dso_local global [0 x i8], align 1
@__stubs_start = external dso_local global [0 x i8], align 1
@__stubs_end = external dso_local global [0 x i8], align 1
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@dump_mem._entry = internal constant %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 130, ptr null, ptr null }, align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"%s%s(0x%08lx to 0x%08lx)\0A\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"dump_mem\00", align 1
@dump_mem._entry_ptr = internal global ptr @dump_mem._entry, section ".printk_index", align 4
@.str.49 = private unnamed_addr constant [7 x i8] c" %08lx\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c" ????????\00", align 1
@dump_mem._entry.51 = internal constant %struct.pi_entry { ptr @.str.52, ptr @.str.48, ptr @.str.2, i32 148, ptr null, ptr null }, align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"%s%04lx:%s\0A\00", align 1
@dump_mem._entry_ptr.53 = internal global ptr @dump_mem._entry.51, section ".printk_index", align 4
@die_lock = internal global %struct.arch_spinlock_t zeroinitializer, align 4
@die_owner = internal unnamed_addr global i32 -1, align 4
@die_nest_count = internal unnamed_addr global i32 0, align 4
@__die.die_counter = internal unnamed_addr global i32 0, align 4
@__die._entry = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 269, ptr null, ptr null }, align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"\010Internal error: %s: %x [#%d] SMP ARM\0A\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"__die\00", align 1
@__die._entry_ptr = internal global ptr @__die._entry, section ".printk_index", align 4
@__die._entry.56 = internal constant %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 280, ptr null, ptr null }, align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"\010Process %.*s (pid: %d, stack limit = 0x%p)\0A\00", align 1
@__die._entry_ptr.58 = internal global ptr @__die._entry.56, section ".printk_index", align 4
@.str.59 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"Stack: \00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = external dso_local local_unnamed_addr global i32, align 4
@.str.62 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"undef_lock\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"(%0*x) \00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"%0*x \00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"bad PC value\00", align 1
@dump_instr._entry = internal constant %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 191, ptr null, ptr null }, align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"%sCode: %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"dump_instr\00", align 1
@dump_instr._entry_ptr = internal global ptr @dump_instr._entry, section ".printk_index", align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@trace_hwlat_callback_enabled = external dso_local local_unnamed_addr global i8, align 1
@trace_osnoise_callback_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"prefetch abort\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"data abort\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"address exception\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"undefined instruction\00", align 1
@bad_syscall._entry = internal constant %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 539, ptr null, ptr null }, align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"\013[%d] %s: obsolete system call %08x.\0A\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"bad_syscall\00", align 1
@bad_syscall._entry_ptr = internal global ptr @bad_syscall._entry, section ".printk_index", align 4
@.str.78 = private unnamed_addr constant [19 x i8] c"Oops - bad syscall\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__kuser_helper_end = external dso_local global [0 x i8], align 1
@__kuser_helper_start = external dso_local global [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 16]
@llvm.compiler.used = appending global [46 x ptr] [ptr @__die._entry, ptr @__die._entry.56, ptr @__die._entry_ptr, ptr @__die._entry_ptr.58, ptr @__div0._entry, ptr @__div0._entry_ptr, ptr @__ksymtab___div0, ptr @__ksymtab___readwrite_bug, ptr @__pgd_error._entry, ptr @__pgd_error._entry_ptr, ptr @__pmd_error._entry, ptr @__pmd_error._entry_ptr, ptr @__pte_error._entry, ptr @__pte_error._entry_ptr, ptr @__readwrite_bug._entry, ptr @__readwrite_bug._entry_ptr, ptr @__setup_user_debug_setup, ptr @_kbl_addr_do_undefinstr, ptr @arm_syscall._entry, ptr @arm_syscall._entry_ptr, ptr @bad_mode._entry, ptr @bad_mode._entry_ptr, ptr @bad_syscall._entry, ptr @bad_syscall._entry_ptr, ptr @baddataabort._entry, ptr @baddataabort._entry.27, ptr @baddataabort._entry_ptr, ptr @baddataabort._entry_ptr.29, ptr @do_undefinstr._entry, ptr @do_undefinstr._entry_ptr, ptr @dump_backtrace_entry._entry, ptr @dump_backtrace_entry._entry_ptr, ptr @dump_backtrace_stm._entry, ptr @dump_backtrace_stm._entry.7, ptr @dump_backtrace_stm._entry_ptr, ptr @dump_backtrace_stm._entry_ptr.8, ptr @dump_instr._entry, ptr @dump_instr._entry_ptr, ptr @dump_mem._entry, ptr @dump_mem._entry.51, ptr @dump_mem._entry_ptr, ptr @dump_mem._entry_ptr.53, ptr @spectre_bhb_update_vectors._entry, ptr @spectre_bhb_update_vectors._entry.44, ptr @spectre_bhb_update_vectors._entry_ptr, ptr @spectre_bhb_update_vectors._entry_ptr.46], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @user_debug_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr %str.addr, align 4
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull @user_debug) #14
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_backtrace_entry(i32 noundef %where, i32 noundef %from, i32 noundef %frame, ptr noundef %loglvl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %frame, 4
  %add1 = add i32 %frame, 76
  %0 = inttoptr i32 %where to ptr
  %1 = inttoptr i32 %from to ptr
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %loglvl, i32 noundef %where, ptr noundef %0, i32 noundef %from, ptr noundef %1) #15
  %cmp.i.i = icmp uge ptr %1, @__entry_text_start
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1
  %cmp1.i.i = icmp ule ptr %add.ptr.i.i, @__entry_text_end
  %2 = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %2, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add3 = add i32 %frame, 16383
  %and = and i32 %add3, -16384
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %and)
  %cmp.not = icmp ugt i32 %add1, %and
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dump_mem(ptr noundef %loglvl, ptr noundef nonnull @.str.3, i32 noundef %add, i32 noundef %add1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dump_mem(ptr noundef %lvl, ptr noundef %str, i32 noundef %bottom, i32 noundef %top) unnamed_addr #1 align 64 {
entry:
  %str1 = alloca [81 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %lvl, ptr noundef %str, i32 noundef %bottom, i32 noundef %top) #15
  %and = and i32 %bottom, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %top)
  %cmp51 = icmp ult i32 %and, %top
  br i1 %cmp51, label %for.body.lr.ph, label %entry.for.end28_crit_edge

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds [81 x i8], ptr %str1, i32 0, i32 80
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %do.end21.for.body6.preheader_crit_edge, %for.body.lr.ph
  %first.052 = phi i32 [ %and, %for.body.lr.ph ], [ %add27, %do.end21.for.body6.preheader_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %str1) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(81) %str1, i8 -1, i32 81, i1 false), !annotation !10
  %call2 = call ptr @__memset(ptr noundef nonnull %str1, i32 noundef 32, i32 noundef 81) #14
  store i8 0, ptr %arrayidx, align 1
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.preheader
  %i.048 = phi i32 [ %inc, %for.inc.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %p.046 = phi i32 [ %add, %for.inc.for.body6_crit_edge ], [ %first.052, %for.body6.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %p.046, i32 %bottom)
  %cmp7.not = icmp ult i32 %p.046, %bottom
  br i1 %cmp7.not, label %for.body6.for.inc_crit_edge, label %if.then

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  store i32 -1, ptr %val, align 4, !annotation !10
  %0 = inttoptr i32 %p.046 to ptr
  %call10 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %val, ptr noundef %0, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  %mul = mul nuw nsw i32 %i.048, 9
  %add.ptr = getelementptr i8, ptr %str1, i32 %mul
  br i1 %tobool.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr %val, align 4
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.49, i32 noundef %1) #14
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.50) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body6.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %add = add i32 %p.046, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.048)
  %cmp4 = icmp ult i32 %i.048, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %top)
  %cmp5 = icmp ult i32 %add, %top
  %2 = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %2, label %for.inc.for.body6_crit_edge, label %do.end21

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

do.end21:                                         ; preds = %for.inc
  %and23 = and i32 %first.052, 65504
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %lvl, i32 noundef %and23, ptr noundef nonnull %str1) #15
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %str1) #12
  %add27 = add i32 %first.052, 32
  %cmp = icmp ult i32 %add27, %top
  br i1 %cmp, label %do.end21.for.body6.preheader_crit_edge, label %do.end21.for.end28_crit_edge

do.end21.for.end28_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

do.end21.for.body6.preheader_crit_edge:           ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6.preheader

for.end28:                                        ; preds = %do.end21.for.end28_crit_edge, %entry.for.end28_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_backtrace_stm(ptr nocapture noundef readonly %stack, i32 noundef %instruction, ptr noundef %loglvl) local_unnamed_addr #1 align 64 {
entry:
  %str = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %str) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %str, i8 -1, i32 80, i1 false), !annotation !10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %stack.addr.027 = phi ptr [ %stack, %entry ], [ %stack.addr.1, %for.inc.for.body_crit_edge ]
  %p.026 = phi ptr [ %str, %entry ], [ %p.1, %for.inc.for.body_crit_edge ]
  %reg.024 = phi i32 [ 10, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %x.023 = phi i32 [ 0, %entry ], [ %x.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %reg.024
  %and = and i32 %shl, %instruction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i32, ptr %stack.addr.027, i32 -1
  %0 = load i32, ptr %stack.addr.027, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.026, ptr noundef nonnull @.str.4, i32 noundef %reg.024, i32 noundef %0) #14
  %add.ptr = getelementptr i8, ptr %p.026, i32 %call
  %inc = add i32 %x.023, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc)
  %cmp1 = icmp eq i32 %inc, 6
  br i1 %cmp1, label %if.then2, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %loglvl, ptr noundef nonnull %str) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %x.1 = phi i32 [ 0, %if.then2 ], [ %inc, %if.then.for.inc_crit_edge ], [ %x.023, %for.body.for.inc_crit_edge ]
  %p.1 = phi ptr [ %str, %if.then2 ], [ %add.ptr, %if.then.for.inc_crit_edge ], [ %p.026, %for.body.for.inc_crit_edge ]
  %stack.addr.1 = phi ptr [ %incdec.ptr, %if.then2 ], [ %incdec.ptr, %if.then.for.inc_crit_edge ], [ %stack.addr.027, %for.body.for.inc_crit_edge ]
  %dec = add nsw i32 %reg.024, -1
  %cmp.not = icmp eq i32 %reg.024, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %cmp8.not = icmp eq ptr %p.1, %str
  br i1 %cmp8.not, label %for.end.if.end16_crit_edge, label %do.end12

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %loglvl, ptr noundef nonnull %str) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end12, %for.end.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %str) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_stack(ptr noundef %tsk, ptr nocapture noundef readnone %sp, ptr noundef %loglvl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unwind_backtrace(ptr noundef null, ptr noundef %tsk, ptr noundef %loglvl) #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @die(ptr noundef %str, ptr noundef %regs, i32 noundef %err) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oops_enter() #14
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !12
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu2.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %cpu2.i, align 4
  tail call void @llvm.prefetch.p0(ptr nonnull @die_lock, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %4 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @die_lock, i32 65536) #12, !srcloc !13
  %asmresult2.i.i = extractvalue { i32, i32, i32 } %4, 2
  %tobool.not.i.i = icmp eq i32 %asmresult2.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32, i32 } %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool3.not.i.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool3.not.i.i, label %arch_spin_trylock.exit.thread.i, label %arch_spin_trylock.exit.i

arch_spin_trylock.exit.thread.i:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !14
  br label %oops_begin.exit

arch_spin_trylock.exit.i:                         ; preds = %do.end.i.i
  %5 = load i32, ptr @die_owner, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.i = icmp eq i32 %3, %5
  br i1 %cmp4.i, label %arch_spin_trylock.exit.i.oops_begin.exit_crit_edge, label %if.else.i

arch_spin_trylock.exit.i.oops_begin.exit_crit_edge: ; preds = %arch_spin_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %oops_begin.exit

if.else.i:                                        ; preds = %arch_spin_trylock.exit.i
  tail call void @llvm.prefetch.p0(ptr nonnull @die_lock, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @die_lock, i32 65536) #12, !srcloc !15
  %asmresult.i.i = extractvalue { i32, i32, i32 } %6, 0
  %lockval.sroa.0.0.extract.shift.i.i = lshr i32 %asmresult.i.i, 16
  %conv31.i.i = and i32 %asmresult.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i.i, i32 %conv31.i.i)
  %cmp.not2.i.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i.i, %conv31.i.i
  br i1 %cmp.not2.i.i, label %if.else.i.arch_spin_lock.exit.i_crit_edge, label %if.else.i.while.body.i.i_crit_edge

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

if.else.i.arch_spin_lock.exit.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_spin_lock.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !16
  %7 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @die_lock, i32 0, i32 1), align 2
  %conv3.i.i = zext i16 %7 to i32
  %cmp.not.i.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i.i, %conv3.i.i
  br i1 %cmp.not.i.i, label %while.body.i.i.arch_spin_lock.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.arch_spin_lock.exit.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_spin_lock.exit.i

arch_spin_lock.exit.i:                            ; preds = %while.body.i.i.arch_spin_lock.exit.i_crit_edge, %if.else.i.arch_spin_lock.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !17
  br label %oops_begin.exit

oops_begin.exit:                                  ; preds = %arch_spin_lock.exit.i, %arch_spin_trylock.exit.i.oops_begin.exit_crit_edge, %arch_spin_trylock.exit.thread.i
  %8 = load i32, ptr @die_nest_count, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr @die_nest_count, align 4
  store i32 %3, ptr @die_owner, align 4
  tail call void @console_verbose() #14
  tail call void @bust_spinlocks(i32 noundef 1) #14
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %oops_begin.exit.if.end.thread_crit_edge, label %if.end

oops_begin.exit.if.end.thread_crit_edge:          ; preds = %oops_begin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end:                                           ; preds = %oops_begin.exit
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %10 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call i32 @report_bug(i32 noundef %10, ptr noundef %regs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %phi.cmp = icmp eq i32 %call3, 0
  br i1 %phi.cmp, label %if.end.if.end.thread_crit_edge, label %if.end._crit_edge

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %11

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %oops_begin.exit.if.end.thread_crit_edge
  br label %11

11:                                               ; preds = %if.end.thread, %if.end._crit_edge
  %12 = phi ptr [ %str, %if.end.thread ], [ @.str.9, %if.end._crit_edge ]
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i14 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i14 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %task.i, align 8
  %16 = load i32, ptr @__die.die_counter, align 4
  %inc.i15 = add i32 %16, 1
  store i32 %inc.i15, ptr @__die.die_counter, align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %12, i32 noundef %err, i32 noundef %inc.i15) #15
  %trap_no.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 219, i32 1
  %17 = load i32, ptr %trap_no.i, align 4
  %call2.i = tail call i32 @notify_die(i32 noundef 1, ptr noundef %12, ptr noundef %regs, i32 noundef %err, i32 noundef %17, i32 noundef 11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 32769
  br i1 %cmp.i, label %.__die.exit_crit_edge, label %if.end.i

.__die.exit_crit_edge:                            ; preds = %11
  call void @__sanitizer_cov_trace_pc() #13
  br label %__die.exit

if.end.i:                                         ; preds = %11
  tail call void @print_modules() #14
  tail call void @__show_regs(ptr noundef %regs) #14
  tail call void @__show_regs_alloc_free(ptr noundef %regs) #14
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %18 = load i32, ptr %pid.i.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %stack.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.thread_info, ptr %19, i32 1
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef 16, ptr noundef %comm.i, i32 noundef %18, ptr noundef %add.ptr.i.i) #15
  %20 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  br i1 %cmp10.i, label %lor.lhs.false.i, label %if.end.i.if.then18.i_crit_edge

if.end.i.if.then18.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and12.i = and i32 %23, 15728640
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i36.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i36.i to ptr
  %preempt_count.i37.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = load volatile i32, ptr %preempt_count.i37.i, align 4
  %and14.i = and i32 %26, 983040
  %or.i = or i32 %and14.i, %and12.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i38.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i38.i to ptr
  %preempt_count.i39.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = load volatile i32, ptr %preempt_count.i39.i, align 4
  %and16.i = and i32 %29, 65280
  %or17.i = or i32 %or.i, %and16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or17.i)
  %tobool.not.i = icmp eq i32 %or17.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.__die.exit_crit_edge, label %lor.lhs.false.i.if.then18.i_crit_edge

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

lor.lhs.false.i.__die.exit_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__die.exit

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %if.end.i.if.then18.i_crit_edge
  %arrayidx20.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %30 = load i32, ptr %arrayidx20.i, align 4
  %31 = load ptr, ptr %stack.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %add.i = add i32 %32, 16384
  tail call fastcc void @dump_mem(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %30, i32 noundef %add.i) #14
  tail call void @unwind_backtrace(ptr noundef %regs, ptr noundef %15, ptr noundef nonnull @.str.59) #14
  tail call fastcc void @dump_instr(ptr noundef nonnull @.str.59, ptr noundef %regs) #14
  br label %__die.exit

__die.exit:                                       ; preds = %if.then18.i, %lor.lhs.false.i.__die.exit_crit_edge, %.__die.exit_crit_edge
  %33 = phi i32 [ 0, %.__die.exit_crit_edge ], [ 11, %if.then18.i ], [ 11, %lor.lhs.false.i.__die.exit_crit_edge ]
  %tobool.not.i16 = icmp eq ptr %regs, null
  br i1 %tobool.not.i16, label %__die.exit.if.end.i20_crit_edge, label %land.lhs.true.i

__die.exit.if.end.i20_crit_edge:                  ; preds = %__die.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i20

land.lhs.true.i:                                  ; preds = %__die.exit
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i17 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i17 to ptr
  %task.i18 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %task.i18, align 8
  %call1.i19 = tail call i32 @kexec_should_crash(ptr noundef %36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool2.not.i = icmp eq i32 %call1.i19, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i20_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i20_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i20

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @crash_kexec(ptr noundef nonnull %regs) #14
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i20_crit_edge, %__die.exit.if.end.i20_crit_edge
  tail call void @bust_spinlocks(i32 noundef 0) #14
  store i32 -1, ptr @die_owner, align 4
  tail call void @add_taint(i32 noundef 7, i32 noundef 1) #14
  %37 = load i32, ptr @die_nest_count, align 4
  %dec.i = add i32 %37, -1
  store i32 %dec.i, ptr @die_nest_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i20.do.body.i_crit_edge

if.end.i20.do.body.i_crit_edge:                   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then4.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !18
  %38 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @die_lock, i32 0, i32 1), align 2
  %inc.i.i = add i16 %38, 1
  store i16 %inc.i.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @die_lock, i32 0, i32 1), align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !20
  br label %do.body.i

do.body.i:                                        ; preds = %if.then4.i, %if.end.i20.do.body.i_crit_edge
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !21
  %and.i.i36.i21 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36.i21)
  %tobool8.not.i = icmp eq i32 %and.i.i36.i21, 0
  br i1 %tobool8.not.i, label %if.then12.i, label %do.body.i.do.end.i_crit_edge, !prof !22

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !23
  tail call void @oops_exit() #14
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i22 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i22 to ptr
  %preempt_count.i.i23 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = load volatile i32, ptr %preempt_count.i.i23, align 4
  %and.i24 = and i32 %42, 15728640
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i32.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i32.i to ptr
  %preempt_count.i33.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = load volatile i32, ptr %preempt_count.i33.i, align 4
  %and17.i = and i32 %45, 983040
  %or.i25 = or i32 %and17.i, %and.i24
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i34.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i34.i to ptr
  %preempt_count.i35.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = load volatile i32, ptr %preempt_count.i35.i, align 4
  %and19.i = and i32 %48, 65280
  %or20.i = or i32 %or.i25, %and19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or20.i)
  %tobool21.not.i = icmp eq i32 %or20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then22.i

if.then22.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.61) #17
  unreachable

if.end23.i:                                       ; preds = %do.end.i
  %49 = load i32, ptr @panic_on_oops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool24.not.i = icmp eq i32 %49, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.62) #17
  unreachable

if.end26.i:                                       ; preds = %if.end23.i
  br i1 %cmp.i, label %oops_end.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @make_task_dead(i32 noundef %33) #18
  unreachable

oops_end.exit:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_bug(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_notify_die(ptr noundef %str, ptr noundef %regs, i32 noundef %signo, i32 noundef %si_code, ptr noundef %addr, i32 noundef %err, i32 noundef %trap) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %0 = load i32, ptr %arrayidx, align 4
  %and = and i32 %0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %task, align 8
  %error_code = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219, i32 2
  store i32 %err, ptr %error_code, align 8
  %4 = load ptr, ptr %task, align 8
  %trap_no = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 219, i32 1
  store i32 %trap, ptr %trap_no, align 4
  %call4 = tail call i32 @force_sig_fault(i32 noundef %signo, i32 noundef %si_code, ptr noundef %addr) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @die(ptr noundef %str, ptr noundef %regs, i32 noundef %err) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @is_valid_bugaddr(i32 noundef %pc) local_unnamed_addr #1 align 64 {
entry:
  %bkpt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bkpt) #12
  store i32 -1, ptr %bkpt, align 4, !annotation !10
  %0 = inttoptr i32 %pc to ptr
  %call = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %bkpt, ptr noundef %0, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i32, ptr %bkpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -234753817, i32 %1)
  %cmp = icmp eq i32 %1, -234753817
  %narrow = select i1 %tobool.not, i1 %cmp, i1 false
  %retval.0 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bkpt) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_undef_hook(ptr noundef %hook) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @undef_lock) #14
  %0 = load ptr, ptr @undef_hook, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hook, ptr noundef nonnull @undef_hook, ptr noundef %0) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %hook, ptr %prev1.i.i, align 4
  store ptr %0, ptr %hook, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %hook, i32 0, i32 1
  store ptr @undef_hook, ptr %prev3.i.i, align 4
  store volatile ptr %hook, ptr @undef_hook, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %call) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_undef_hook(ptr noundef %hook) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @undef_lock) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hook) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %hook, i32 0, i32 1
  %0 = load ptr, ptr %prev.i.i, align 4
  %1 = load ptr, ptr %hook, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %0, ptr %prev1.i.i.i, align 4
  store volatile ptr %1, ptr %0, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  store ptr inttoptr (i32 256 to ptr), ptr %hook, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %hook, i32 0, i32 1
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %call) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_undefinstr(ptr noundef %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = load i32, ptr %arrayidx, align 4
  %1 = inttoptr i32 %0 to ptr
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %2 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %2, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %and)
  %cmp = icmp eq i32 %and, 19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  br label %if.end58

if.else:                                          ; preds = %entry
  %and5 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.else41, label %if.then6

if.then6:                                         ; preds = %if.else
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 454) #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !24
  %and.i = and i32 %7, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %8 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #12, !srcloc !27
  %asmresult = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.end, label %if.then6.die_sig_crit_edge

if.then6.die_sig_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %die_sig

if.end:                                           ; preds = %if.then6
  %asmresult7 = extractvalue { i32, i32 } %8, 1
  %conv = trunc i32 %asmresult7 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %conv13 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6145, i16 %9)
  %cmp14 = icmp ugt i16 %9, -6145
  br i1 %cmp14, label %if.then16, label %if.end.if.end58_crit_edge

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then16:                                        ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 459) #14
  %add.ptr = getelementptr i16, ptr %1, i32 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i94 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i94 to ptr
  %cpu_domain.i.i95 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i95) #11, !srcloc !24
  %and.i96 = and i32 %12, -13
  %or.i97 = or i32 %and.i96, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i97) #12, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #12, !srcloc !28
  %asmresult26 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult26)
  %tobool31.not = icmp eq i32 %asmresult26, 0
  %asmresult27 = extractvalue { i32, i32 } %13, 1
  %conv28 = trunc i32 %asmresult27 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv28)
  %conv35 = zext i16 %14 to i32
  %shl = shl nuw i32 %conv13, 16
  %or = or i32 %shl, %conv35
  br i1 %tobool31.not, label %if.then16.if.end58_crit_edge, label %if.then16.die_sig_crit_edge

if.then16.die_sig_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %die_sig

if.then16.if.end58_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.else41:                                        ; preds = %if.else
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 465) #14
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i98 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i98 to ptr
  %cpu_domain.i.i99 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i99) #11, !srcloc !24
  %and.i100 = and i32 %17, -13
  %or.i101 = or i32 %and.i100, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i101) #12, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #12, !srcloc !29
  %asmresult51 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult51)
  %tobool54.not = icmp eq i32 %asmresult51, 0
  br i1 %tobool54.not, label %if.end56, label %if.else41.die_sig_crit_edge

if.else41.die_sig_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %die_sig

if.end56:                                         ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult52 = extractvalue { i32, i32 } %18, 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %asmresult52)
  br label %if.end58

if.end58:                                         ; preds = %if.end56, %if.then16.if.end58_crit_edge, %if.end.if.end58_crit_edge, %if.then
  %instr.1 = phi i32 [ %4, %if.then ], [ %or, %if.then16.if.end58_crit_edge ], [ %conv13, %if.end.if.end58_crit_edge ], [ %19, %if.end56 ]
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @undef_lock) #14
  %hook.032.i = load ptr, ptr @undef_hook, align 4
  %cmp2.not33.i = icmp eq ptr %hook.032.i, @undef_hook
  br i1 %cmp2.not33.i, label %do.body14.thread.i, label %if.end58.for.body.i_crit_edge

if.end58.for.body.i_crit_edge:                    ; preds = %if.end58
  br label %for.body.i

do.body14.thread.i:                               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %call.i) #14
  br label %die_sig

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end58.for.body.i_crit_edge
  %hook.035.i = phi ptr [ %hook.0.i, %for.inc.i.for.body.i_crit_edge ], [ %hook.032.i, %if.end58.for.body.i_crit_edge ]
  %fn.034.i = phi ptr [ %fn.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end58.for.body.i_crit_edge ]
  %instr_mask.i = getelementptr inbounds %struct.undef_hook, ptr %hook.035.i, i32 0, i32 1
  %20 = load i32, ptr %instr_mask.i, align 4
  %and.i102 = and i32 %20, %instr.1
  %instr_val.i = getelementptr inbounds %struct.undef_hook, ptr %hook.035.i, i32 0, i32 2
  %21 = load i32, ptr %instr_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i102, i32 %21)
  %cmp4.i = icmp eq i32 %and.i102, %21
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %22 = load i32, ptr %arrayidx2, align 4
  %cpsr_mask.i = getelementptr inbounds %struct.undef_hook, ptr %hook.035.i, i32 0, i32 3
  %23 = load i32, ptr %cpsr_mask.i, align 4
  %and6.i = and i32 %23, %22
  %cpsr_val.i = getelementptr inbounds %struct.undef_hook, ptr %hook.035.i, i32 0, i32 4
  %24 = load i32, ptr %cpsr_val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i, i32 %24)
  %cmp7.i = icmp eq i32 %and6.i, %24
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %fn9.i = getelementptr inbounds %struct.undef_hook, ptr %hook.035.i, i32 0, i32 5
  %25 = load ptr, ptr %fn9.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %fn.1.i = phi ptr [ %25, %if.then.i ], [ %fn.034.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %fn.034.i, %for.body.i.for.inc.i_crit_edge ]
  %hook.0.i = load ptr, ptr %hook.035.i, align 4
  %cmp2.not.i = icmp eq ptr %hook.0.i, @undef_hook
  br i1 %cmp2.not.i, label %do.body14.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body14.i:                                      ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %call.i) #14
  %tobool.not.i = icmp eq ptr %fn.1.i, null
  br i1 %tobool.not.i, label %do.body14.i.die_sig_crit_edge, label %call_undef_hook.exit

do.body14.i.die_sig_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %die_sig

call_undef_hook.exit:                             ; preds = %do.body14.i
  %call22.i = tail call i32 %fn.1.i(ptr noundef %regs, i32 noundef %instr.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp60 = icmp eq i32 %call22.i, 0
  br i1 %cmp60, label %call_undef_hook.exit.cleanup74_crit_edge, label %call_undef_hook.exit.die_sig_crit_edge

call_undef_hook.exit.die_sig_crit_edge:           ; preds = %call_undef_hook.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %die_sig

call_undef_hook.exit.cleanup74_crit_edge:         ; preds = %call_undef_hook.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

die_sig:                                          ; preds = %call_undef_hook.exit.die_sig_crit_edge, %do.body14.i.die_sig_crit_edge, %do.body14.thread.i, %if.else41.die_sig_crit_edge, %if.then16.die_sig_crit_edge, %if.then6.die_sig_crit_edge
  %26 = load i32, ptr @user_debug, align 4
  %and64 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %die_sig.if.end73_crit_edge, label %do.end

die_sig.if.end73_crit_edge:                       ; preds = %die_sig
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.end:                                           ; preds = %die_sig
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i103 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i103 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = load i32, ptr %pid.i, align 8
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm, i32 noundef %30, ptr noundef %1) #15
  tail call void @__show_regs(ptr noundef %regs) #14
  tail call fastcc void @dump_instr(ptr noundef nonnull @.str.12, ptr noundef %regs) #16
  br label %if.end73

if.end73:                                         ; preds = %do.end, %die_sig.if.end73_crit_edge
  %31 = load i32, ptr %arrayidx2, align 4
  %and.i105 = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %cmp.i = icmp eq i32 %and.i105, 0
  br i1 %cmp.i, label %if.then.i106, label %if.else.i

if.then.i106:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %task.i, align 8
  %error_code.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 219, i32 2
  store i32 0, ptr %error_code.i, align 8
  %35 = load ptr, ptr %task.i, align 8
  %trap_no.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 219, i32 1
  store i32 6, ptr %trap_no.i, align 4
  %call4.i = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 1, ptr noundef %1) #14
  br label %cleanup74

if.else.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @die(ptr noundef nonnull @.str.13, ptr noundef %regs, i32 noundef 0) #14
  br label %cleanup74

cleanup74:                                        ; preds = %if.else.i, %if.then.i106, %call_undef_hook.exit.cleanup74_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__show_regs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dump_instr(ptr noundef %lvl, ptr nocapture noundef readonly %regs) unnamed_addr #1 align 64 {
entry:
  %str = alloca [53 x i8], align 1
  %val = alloca i32, align 4
  %val16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %1 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 8, i32 4
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %str) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(53) %str, i8 -1, i32 53, i1 false), !annotation !10
  %and.lobit = lshr exact i32 %and, 5
  %2 = inttoptr i32 %0 to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %3 = phi i32 [ %1, %entry ], [ %.pre, %for.inc.for.body_crit_edge ]
  %p.084 = phi ptr [ %str, %entry ], [ %p.1, %for.inc.for.body_crit_edge ]
  %i.082 = phi i32 [ -4, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  store i32 -1, ptr %val, align 4, !annotation !10
  %and7 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %if.else16, label %if.then

if.then:                                          ; preds = %for.body
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val16) #12
  store i16 -1, ptr %val16, align 2, !annotation !10
  %arrayidx11 = getelementptr i16, ptr %2, i32 %i.082
  %call = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %val16, ptr noundef %arrayidx11, i32 noundef 2) #14
  %4 = load i16, ptr %val16, align 2
  %conv = zext i16 %4 to i32
  store i32 %conv, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16) #12
  br label %if.end41

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx13 = getelementptr i32, ptr %2, i32 %i.082
  %call15 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %val, ptr noundef %arrayidx13, i32 noundef 4) #14
  br label %if.end41

if.else16:                                        ; preds = %for.body
  br i1 %tobool.not, label %if.else26, label %if.then18

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 178) #14
  %arrayidx20 = getelementptr i16, ptr %2, i32 %i.082
  %5 = call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !24
  %and.i = and i32 %7, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %8 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx20, i32 -1226833921) #12, !srcloc !30
  %asmresult = extractvalue { i32, i32 } %8, 0
  %asmresult22 = extractvalue { i32, i32 } %8, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %conv24 = and i32 %asmresult22, 65535
  store i32 %conv24, ptr %val, align 4
  br label %if.end41

if.else26:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 180) #14
  %arrayidx30 = getelementptr i32, ptr %2, i32 %i.082
  %9 = call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i73 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i73 to ptr
  %cpu_domain.i.i74 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i74) #11, !srcloc !24
  %and.i75 = and i32 %11, -13
  %or.i76 = or i32 %and.i75, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i76) #12, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  %12 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx30, i32 -1226833921) #12, !srcloc !31
  %asmresult37 = extractvalue { i32, i32 } %12, 0
  %asmresult38 = extractvalue { i32, i32 } %12, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !26
  store i32 %asmresult38, ptr %val, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else26, %if.then18, %if.else, %if.then10
  %bad.0 = phi i32 [ %asmresult, %if.then18 ], [ %asmresult37, %if.else26 ], [ %call, %if.then10 ], [ %call15, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bad.0)
  %tobool42.not = icmp eq i32 %bad.0, 0
  br i1 %tobool42.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.084, ptr noundef nonnull @.str.66) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  br label %do.end

for.inc:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.082)
  %cmp44 = icmp eq i32 %i.082, 0
  %cond46 = select i1 %cmp44, ptr @.str.64, ptr @.str.65
  %13 = load i32, ptr %val, align 4
  %call47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.084, ptr noundef nonnull %cond46, i32 noundef %cond, i32 noundef %13) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  %exitcond = icmp eq i32 %i.082, %and.lobit
  br i1 %exitcond, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nsw i32 %i.082, 1
  %p.1 = getelementptr i8, ptr %p.084, i32 %call47
  %.pre = load i32, ptr %arrayidx2, align 4
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %cleanup
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %lvl, ptr noundef nonnull %str) #15
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %str) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_fiq_as_nmi(ptr noundef %regs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i124 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i124 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i125 = add i32 %3, ptrtoint (ptr @__irq_regs to i32)
  %4 = inttoptr i32 %add.i125 to ptr
  %5 = load ptr, ptr %4, align 4
  store ptr %regs, ptr %4, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %task, align 8
  %lockdep_recursion = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 143
  %9 = load i32, ptr %lockdep_recursion, align 4
  %add = add i32 %9, 65536
  store i32 %add, ptr %lockdep_recursion, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %and)
  %cmp = icmp eq i32 %and, 15728640
  br i1 %cmp, label %do.body10, label %do.end17, !prof !22

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 503, 0\0A.popsection", ""() #12, !srcloc !32
  unreachable

do.end17:                                         ; preds = %entry
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %15, 1114112
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = load i32, ptr %arrayidx, align 4
  %add31 = add i32 %17, ptrtoint (ptr @hardirq_context to i32)
  %18 = inttoptr i32 %add31 to ptr
  %19 = load i32, ptr %18, align 4
  %add32 = add i32 %19, 1
  store i32 %add32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp35 = icmp eq i32 %19, 0
  br i1 %cmp35, label %if.then36, label %do.end17.do.end41_crit_edge

do.end17.do.end41_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

if.then36:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  %20 = load ptr, ptr %task, align 8
  %hardirq_threaded = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 136
  store i32 0, ptr %hardirq_threaded, align 16
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.end17.do.end41_crit_edge
  tail call void @rcu_nmi_enter() #14
  %21 = load i8, ptr @trace_hwlat_callback_enabled, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %do.end41.if.end.i_crit_edge, label %if.then.i

do.end41.if.end.i_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hwlat_callback(i1 noundef zeroext true) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end41.if.end.i_crit_edge
  %22 = load i8, ptr @trace_osnoise_callback_enabled, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i = icmp eq i8 %22, 0
  br i1 %tobool1.not.i, label %if.end.i.ftrace_nmi_enter.exit_crit_edge, label %if.then2.i

if.end.i.ftrace_nmi_enter.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ftrace_nmi_enter.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_osnoise_callback(i1 noundef zeroext true) #14
  br label %ftrace_nmi_enter.exit

ftrace_nmi_enter.exit:                            ; preds = %if.then2.i, %if.end.i.ftrace_nmi_enter.exit_crit_edge
  %23 = load i8, ptr @trace_hwlat_callback_enabled, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i126 = icmp eq i8 %23, 0
  br i1 %tobool.not.i126, label %ftrace_nmi_enter.exit.if.end.i129_crit_edge, label %if.then.i127

ftrace_nmi_enter.exit.if.end.i129_crit_edge:      ; preds = %ftrace_nmi_enter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i129

if.then.i127:                                     ; preds = %ftrace_nmi_enter.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hwlat_callback(i1 noundef zeroext false) #14
  br label %if.end.i129

if.end.i129:                                      ; preds = %if.then.i127, %ftrace_nmi_enter.exit.if.end.i129_crit_edge
  %24 = load i8, ptr @trace_osnoise_callback_enabled, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i128 = icmp eq i8 %24, 0
  br i1 %tobool1.not.i128, label %if.end.i129.ftrace_nmi_exit.exit_crit_edge, label %if.then2.i130

if.end.i129.ftrace_nmi_exit.exit_crit_edge:       ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %ftrace_nmi_exit.exit

if.then2.i130:                                    ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_osnoise_callback(i1 noundef zeroext false) #14
  br label %ftrace_nmi_exit.exit

ftrace_nmi_exit.exit:                             ; preds = %if.then2.i130, %if.end.i129.ftrace_nmi_exit.exit_crit_edge
  tail call void @rcu_nmi_exit() #14
  %25 = load i32, ptr %cpu, align 4
  %arrayidx73 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = load i32, ptr %arrayidx73, align 4
  %add74 = add i32 %26, ptrtoint (ptr @hardirq_context to i32)
  %27 = inttoptr i32 %add74 to ptr
  %28 = load i32, ptr %27, align 4
  %add75 = add i32 %28, -1
  store i32 %add75, ptr %27, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i120 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i120 to ptr
  %preempt_count.i121 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = load volatile i32, ptr %preempt_count.i121, align 4
  %and85 = and i32 %31, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body96, label %do.end104, !prof !22

do.body96:                                        ; preds = %ftrace_nmi_exit.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 507, 0\0A.popsection", ""() #12, !srcloc !34
  unreachable

do.end104:                                        ; preds = %ftrace_nmi_exit.exit
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i122 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i122 to ptr
  %preempt_count.i.i123 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = load volatile i32, ptr %preempt_count.i.i123, align 4
  %sub.i = add i32 %34, -1114112
  store volatile i32 %sub.i, ptr %preempt_count.i.i123, align 4
  %35 = load ptr, ptr %task, align 8
  %lockdep_recursion111 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 143
  %36 = load i32, ptr %lockdep_recursion111, align 4
  %sub = add i32 %36, -65536
  store i32 %sub, ptr %lockdep_recursion111, align 4
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i131 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i131 to ptr
  %cpu.i132 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %cpu.i132, align 4
  %arrayidx.i133 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = load i32, ptr %arrayidx.i133, align 4
  %add.i134 = add i32 %40, ptrtoint (ptr @__irq_regs to i32)
  %41 = inttoptr i32 %add.i134 to ptr
  store ptr %5, ptr %41, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_enter() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_exit() local_unnamed_addr #5

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bad_mode(ptr noundef %regs, i32 noundef %reason) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_verbose() #14
  %arrayidx = getelementptr [5 x ptr], ptr @handler, i32 0, i32 %reason
  %0 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %0) #15
  tail call void @die(ptr noundef nonnull @.str.18, ptr noundef %regs, i32 noundef 0) #16
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !21
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !35
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.19) #17
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_syscall(i32 noundef %no, ptr noundef %regs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.mask = and i32 %no, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 983040
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task.i, align 8
  %personality.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 62
  %3 = load i32, ptr %personality.i, align 32
  %and.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @send_sig(i32 noundef 11, ptr noundef %2, i32 noundef 1) #14
  br label %bad_syscall.exit

if.end.i:                                         ; preds = %if.then
  %4 = load i32, ptr @user_debug, align 4
  %and4.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %do.end.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 68
  %5 = load i32, ptr %pid.i.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 101
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %5, ptr noundef %comm.i, i32 noundef %no) #15
  tail call fastcc void @dump_instr(ptr noundef nonnull @.str.23, ptr noundef %regs) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.end.i.if.end12.i_crit_edge
  %arrayidx16.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %6 = load i32, ptr %arrayidx16.i, align 4
  %and.i27.i = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %cmp.i.i = icmp eq i32 %and.i27.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %7 = load i32, ptr %arrayidx14.i, align 4
  %8 = inttoptr i32 %7 to ptr
  %and17.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cond.neg.i = select i1 %tobool18.not.i, i32 -4, i32 -2
  %add.ptr.i = getelementptr i8, ptr %8, i32 %cond.neg.i
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %task.i.i, align 8
  %error_code.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 219, i32 2
  store i32 %no, ptr %error_code.i.i, align 8
  %12 = load ptr, ptr %task.i.i, align 8
  %trap_no.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 219, i32 1
  store i32 0, ptr %trap_no.i.i, align 4
  %call4.i.i = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 4, ptr noundef %add.ptr.i) #14
  br label %bad_syscall.exit

if.else.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @die(ptr noundef nonnull @.str.78, ptr noundef %regs, i32 noundef %no) #14
  br label %bad_syscall.exit

bad_syscall.exit:                                 ; preds = %if.else.i.i, %if.then.i.i, %if.then.i
  %retval.0.i = load i32, ptr %regs, align 4
  br label %return

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %no to i16
  %13 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %sw.bb1
    i16 2, label %sw.bb7
    i16 3, label %sw.bb15
    i16 4, label %sw.bb25
    i16 5, label %sw.bb34
    i16 6, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %14 = load i32, ptr %arrayidx.i, align 4
  %and.i97 = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %cmp.i = icmp eq i32 %and.i97, 0
  br i1 %cmp.i, label %if.then.i100, label %if.else.i

if.then.i100:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i98 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i98 to ptr
  %task.i99 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %task.i99, align 8
  %error_code.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 219, i32 2
  store i32 0, ptr %error_code.i, align 8
  %18 = load ptr, ptr %task.i99, align 8
  %trap_no.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 219, i32 1
  store i32 0, ptr %trap_no.i, align 4
  %call4.i = tail call i32 @force_sig_fault(i32 noundef 11, i32 noundef 1, ptr noundef null) #14
  br label %return

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @die(ptr noundef nonnull @.str.20, ptr noundef %regs, i32 noundef 0) #14
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %19 = load i32, ptr %arrayidx, align 4
  %and2 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %cond.neg = select i1 %tobool.not, i32 -4, i32 -2
  %arrayidx4 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %20 = load i32, ptr %arrayidx4, align 4
  %sub = add i32 %cond.neg, %20
  store i32 %sub, ptr %arrayidx4, align 4
  tail call void @ptrace_break(ptr noundef %regs) #14
  %21 = load i32, ptr %regs, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end
  %22 = load i32, ptr %regs, align 4
  %arrayidx11 = getelementptr [18 x i32], ptr %regs, i32 0, i32 1
  %23 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr [18 x i32], ptr %regs, i32 0, i32 2
  %24 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %22)
  %cmp.i102 = icmp ult i32 %23, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i = icmp ne i32 %24, 0
  %or.cond.i = or i1 %cmp.i102, %tobool.i
  br i1 %or.cond.i, label %sw.bb7.return_crit_edge, label %if.end.i103

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i103:                                      ; preds = %sw.bb7
  %sub.i = sub i32 %23, %22
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(i32 %22, i32 %sub.i, i32 -1226833920) #19, !srcloc !36
  %asmresult.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp2.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp2.i, label %if.end.i103.do.body.i.i_crit_edge, label %if.end.i103.return_crit_edge

if.end.i103.return_crit_edge:                     ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i103.do.body.i.i_crit_edge:                ; preds = %if.end.i103
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i103.do.body.i.i_crit_edge
  %start.addr.0.i.i = phi i32 [ %add.i.i, %do.cond.i.i.do.body.i.i_crit_edge ], [ %22, %if.end.i103.do.body.i.i_crit_edge ]
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i.i104 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i104 to ptr
  %task.i.i105 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %task.i.i105, align 8
  %stack.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %stack.i.i.i.i.i, align 4
  %30 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.if.end.i.i_crit_edge, label %fatal_signal_pending.exit.i.i

do.body.i.i.if.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

fatal_signal_pending.exit.i.i:                    ; preds = %do.body.i.i
  %signal.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 116, i32 1
  %31 = load i32, ptr %signal.i.i.i.i, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %fatal_signal_pending.exit.i.i.if.end.i.i_crit_edge, label %fatal_signal_pending.exit.i.i.return_crit_edge

fatal_signal_pending.exit.i.i.return_crit_edge:   ; preds = %fatal_signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

fatal_signal_pending.exit.i.i.if.end.i.i_crit_edge: ; preds = %fatal_signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %fatal_signal_pending.exit.i.i.if.end.i.i_crit_edge, %do.body.i.i.if.end.i.i_crit_edge
  %sub.i.i = sub i32 %23, %start.addr.0.i.i
  %33 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 4096) #12
  %34 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 6), align 4
  %add.i.i = add i32 %33, %start.addr.0.i.i
  %call2.i.i = tail call i32 %34(i32 noundef %start.addr.0.i.i, i32 noundef %add.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.cond.i.i, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.cond.i.i:                                      ; preds = %if.end.i.i
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 567, i32 noundef 0) #14
  %call.i.i.i = tail call i32 @__cond_resched() #14
  %cmp9.i.i = icmp ult i32 %add.i.i, %23
  br i1 %cmp9.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.return_crit_edge

do.cond.i.i.return_crit_edge:                     ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

sw.bb15:                                          ; preds = %if.end
  %35 = load i32, ptr @elf_hwcap, align 4
  %and16 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %sw.bb15.sw.epilog_crit_edge, label %if.end19

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx21 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %36 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %36, -17
  store i32 %and22, ptr %arrayidx21, align 4
  %37 = load i32, ptr %regs, align 4
  br label %return

sw.bb25:                                          ; preds = %if.end
  %38 = load i32, ptr @elf_hwcap, align 4
  %and26 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %sw.bb25.sw.epilog_crit_edge, label %if.end29

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx31 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %39 = load i32, ptr %arrayidx31, align 4
  %or = or i32 %39, 16
  store i32 %or, ptr %arrayidx31, align 4
  %40 = load i32, ptr %regs, align 4
  br label %return

sw.bb34:                                          ; preds = %if.end
  %41 = load i32, ptr %regs, align 4
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i107 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i107 to ptr
  %tp_value.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 8
  store i32 %41, ptr %tp_value.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  %44 = load i32, ptr @elf_hwcap, align 4
  %and.i108 = and i32 %44, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %tobool.not.i109, label %if.else.i111, label %if.then.i110

if.then.i110:                                     ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 3", "r"(i32 %41) #12, !srcloc !38
  br label %return

if.else.i111:                                     ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %41, ptr inttoptr (i32 -61456 to ptr), align 16
  br label %return

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i113 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i113 to ptr
  %tp_value = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 8
  %47 = load i32, ptr %tp_value, align 8
  br label %return

sw.default:                                       ; preds = %if.end
  %and = and i32 %no, 63488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp41 = icmp eq i32 %and, 0
  br i1 %cmp41, label %sw.default.return_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb25.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge
  %48 = load i32, ptr @user_debug, align 4
  %and44 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %sw.epilog.if.end63_crit_edge, label %do.end

sw.epilog.if.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end:                                           ; preds = %sw.epilog
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i114 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i114 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = load i32, ptr %pid.i, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 101
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %52, ptr noundef %comm, i32 noundef %no) #15
  tail call fastcc void @dump_instr(ptr noundef nonnull @.str.23, ptr noundef %regs) #16
  %arrayidx53 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %53 = load i32, ptr %arrayidx53, align 4
  %and54 = and i32 %53, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %if.then56, label %do.end.if.end63_crit_edge

do.end.if.end63_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__show_regs(ptr noundef %regs) #14
  %arrayidx58 = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %54 = load i32, ptr %arrayidx58, align 4
  %55 = load i32, ptr %arrayidx53, align 4
  %and61 = and i32 %55, 31
  tail call void @c_backtrace(i32 noundef %54, i32 noundef %and61, ptr noundef nonnull @.str.23) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %do.end.if.end63_crit_edge, %sw.epilog.if.end63_crit_edge
  %arrayidx67 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %56 = load i32, ptr %arrayidx67, align 4
  %and.i116 = and i32 %56, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %cmp.i117 = icmp eq i32 %and.i116, 0
  br i1 %cmp.i117, label %if.then.i123, label %if.else.i124

if.then.i123:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx65 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %57 = load i32, ptr %arrayidx65, align 4
  %58 = inttoptr i32 %57 to ptr
  %and68 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70.neg = select i1 %tobool69.not, i32 -4, i32 -2
  %add.ptr = getelementptr i8, ptr %58, i32 %cond70.neg
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i118 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i118 to ptr
  %task.i119 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %task.i119, align 8
  %error_code.i120 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 219, i32 2
  store i32 %no, ptr %error_code.i120, align 8
  %62 = load ptr, ptr %task.i119, align 8
  %trap_no.i121 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 219, i32 1
  store i32 0, ptr %trap_no.i121, align 4
  %call4.i122 = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 4, ptr noundef %add.ptr) #14
  br label %return

if.else.i124:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @die(ptr noundef nonnull @.str.24, ptr noundef %regs, i32 noundef %no) #14
  br label %return

return:                                           ; preds = %if.else.i124, %if.then.i123, %sw.default.return_crit_edge, %sw.bb37, %if.else.i111, %if.then.i110, %if.end29, %if.end19, %do.cond.i.i.return_crit_edge, %if.end.i.i.return_crit_edge, %fatal_signal_pending.exit.i.i.return_crit_edge, %if.end.i103.return_crit_edge, %sw.bb7.return_crit_edge, %sw.bb1, %if.else.i, %if.then.i100, %bad_syscall.exit
  %retval.0 = phi i32 [ %retval.0.i, %bad_syscall.exit ], [ %47, %sw.bb37 ], [ %40, %if.end29 ], [ %37, %if.end19 ], [ %21, %sw.bb1 ], [ -38, %sw.default.return_crit_edge ], [ 0, %if.then.i100 ], [ 0, %if.else.i ], [ -22, %sw.bb7.return_crit_edge ], [ -14, %if.end.i103.return_crit_edge ], [ 0, %if.then.i110 ], [ 0, %if.else.i111 ], [ 0, %if.then.i123 ], [ 0, %if.else.i124 ], [ 0, %do.cond.i.i.return_crit_edge ], [ %call2.i.i, %if.end.i.i.return_crit_edge ], [ 0, %fatal_signal_pending.exit.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_break(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @c_backtrace(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @baddataabort(i32 noundef %code, i32 noundef %instr, ptr noundef %regs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = load i32, ptr %arrayidx, align 4
  %1 = load i32, ptr @user_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = load i32, ptr %pid.i, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %5, ptr noundef %comm, i32 noundef %code, i32 noundef %instr) #15
  tail call fastcc void @dump_instr(ptr noundef nonnull @.str.23, ptr noundef %regs) #16
  %6 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 53
  %7 = load ptr, ptr %mm, align 8
  tail call void @show_pte(ptr noundef nonnull @.str.23, ptr noundef %7, i32 noundef %0) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %8 = load i32, ptr %arrayidx.i, align 4
  %and.i16 = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %cmp.i = icmp eq i32 %and.i16, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = inttoptr i32 %0 to ptr
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %task.i, align 8
  %error_code.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 219, i32 2
  store i32 %instr, ptr %error_code.i, align 8
  %13 = load ptr, ptr %task.i, align 8
  %trap_no.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 219, i32 1
  store i32 0, ptr %trap_no.i, align 4
  %call4.i = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 1, ptr noundef %9) #14
  br label %arm_notify_die.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @die(ptr noundef nonnull @.str.30, ptr noundef %regs, i32 noundef %instr) #14
  br label %arm_notify_die.exit

arm_notify_die.exit:                              ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_pte(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__readwrite_bug(ptr noundef %fn) #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %fn) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 738, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pte_error(ptr noundef %file, i32 noundef %line, i32 noundef %pte) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %pte to i64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %file, i32 noundef %line, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pmd_error(ptr noundef %file, i32 noundef %line, i32 noundef %pmd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %pmd to i64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %file, i32 noundef %line, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pgd_error(ptr noundef %file, i32 noundef %line, ptr nocapture noundef readonly %pgd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %pgd, align 4
  %conv = zext i32 %0 to i64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %file, i32 noundef %line, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__div0() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  tail call void @dump_stack() #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @abort() local_unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 766, 0\0A.popsection", ""() #12, !srcloc !40
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spectre_bhb_update_vectors(i32 noundef %method) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %cpu, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %method, label %do.end5 [
    i32 16, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %and.i14 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i14 to ptr
  %cpu8 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %cpu8, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %7, i32 noundef %method) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %vec_end.0 = phi i32 [ ptrtoint (ptr @__vectors_bhb_bpiall_end to i32), %sw.bb2 ], [ ptrtoint (ptr @__vectors_bhb_loop8_end to i32), %if.end.sw.epilog_crit_edge ]
  %vec_start.0 = phi ptr [ @__vectors_bhb_bpiall_start, %sw.bb2 ], [ @__vectors_bhb_loop8_start, %if.end.sw.epilog_crit_edge ]
  %8 = load ptr, ptr @vectors_page, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %vec_start.0 to i32
  %sub.ptr.sub.i = sub i32 %vec_end.0, %sub.ptr.rhs.cast.i
  %call.i = tail call ptr @__memcpy(ptr noundef %8, ptr noundef nonnull %vec_start.0, i32 noundef %sub.ptr.sub.i) #14
  %9 = load ptr, ptr @vectors_page, align 4
  %10 = ptrtoint ptr %9 to i32
  %add1.i = add i32 %sub.ptr.sub.i, %10
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  tail call void %11(i32 noundef %10, i32 noundef %add1.i) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end5, %do.end
  %retval.0 = phi i32 [ 2, %do.end ], [ 2, %do.end5 ], [ 1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_trap_init(ptr noundef %vectors_base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %vectors_base, ptr @vectors_page, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %vectors_base, i32 %i.09
  store i32 -402792719, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @__memcpy(ptr noundef %vectors_base, ptr noundef nonnull @__vectors_start, i32 noundef sub (i32 ptrtoint (ptr @__vectors_end to i32), i32 ptrtoint (ptr @__vectors_start to i32))) #14
  %add.ptr = getelementptr i8, ptr %vectors_base, i32 4096
  %call.i8 = tail call ptr @__memcpy(ptr noundef %add.ptr, ptr noundef nonnull @__stubs_start, i32 noundef sub (i32 ptrtoint (ptr @__stubs_end to i32), i32 ptrtoint (ptr @__stubs_start to i32))) #14
  tail call fastcc void @kuser_init(ptr noundef %vectors_base) #20
  %0 = ptrtoint ptr %vectors_base to i32
  %add1.i = add i32 %0, 8192
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  tail call void %1(i32 noundef %0, i32 noundef %add1.i) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kuser_init(ptr noundef %vectors) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %vectors, i32 add (i32 sub (i32 0, i32 sub (i32 ptrtoint (ptr @__kuser_helper_end to i32), i32 ptrtoint (ptr @__kuser_helper_start to i32))), i32 4096)
  %call = tail call ptr @__memcpy(ptr noundef %add.ptr1, ptr noundef nonnull @__kuser_helper_start, i32 noundef sub (i32 ptrtoint (ptr @__kuser_helper_end to i32), i32 ptrtoint (ptr @__kuser_helper_start to i32))) #14
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr2 = getelementptr i8, ptr %vectors, i32 4064
  %add.ptr3 = getelementptr i8, ptr %vectors, i32 4072
  %call4 = tail call ptr @__memcpy(ptr noundef %add.ptr2, ptr noundef %add.ptr3, i32 noundef 4) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unwind_backtrace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @oops_enter() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_die(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_modules() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__show_regs_alloc_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kexec_should_crash(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_kexec(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @oops_exit() local_unnamed_addr #5

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @make_task_dead(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hwlat_callback(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_osnoise_callback(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #18 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #19 = { nounwind readnone }
attributes #20 = { cold nobuiltin "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"auto-init"}
!11 = !{i64 2154277903}
!12 = !{i64 876739, i64 876800}
!13 = !{i64 1744577, i64 1744600, i64 1744618, i64 1744650, i64 1744674}
!14 = !{i64 2149235950}
!15 = !{i64 1744074, i64 1744097, i64 1744117, i64 1744141, i64 1744157}
!16 = !{i64 2149232473}
!17 = !{i64 2149235589}
!18 = !{i64 2149236271}
!19 = !{i64 2149231945}
!20 = !{i64 2149232044, i64 2149232071, i64 2149232118, i64 2149232140, i64 2149232168, i64 2149232188}
!21 = !{i64 879471}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 879756}
!24 = !{i64 5250212}
!25 = !{i64 5250409}
!26 = !{i64 2152735642}
!27 = !{i64 2154296111, i64 2154296391, i64 2154296725, i64 2154297059}
!28 = !{i64 2154308512, i64 2154308792, i64 2154309126, i64 2154309460}
!29 = !{i64 2154323650, i64 2154323930, i64 2154324264, i64 2154324598}
!30 = !{i64 2154258024, i64 2154258304, i64 2154258638, i64 2154258972}
!31 = !{i64 2154272786, i64 2154273066, i64 2154273400, i64 2154273734}
!32 = !{i64 2154335069, i64 2154335557, i64 2154335106, i64 2154335162, i64 2154335196, i64 2154335220, i64 2154335261, i64 2154335282, i64 2154335310, i64 2154335344}
!33 = !{i8 0, i8 2}
!34 = !{i64 2154349317, i64 2154349805, i64 2154349354, i64 2154349410, i64 2154349444, i64 2154349468, i64 2154349509, i64 2154349530, i64 2154349558, i64 2154349592}
!35 = !{i64 877174}
!36 = !{i64 2154357229, i64 2154357254}
!37 = !{i64 2154235714}
!38 = !{i64 6750968}
!39 = !{i64 2154366295, i64 2154366783, i64 2154366332, i64 2154366388, i64 2154366422, i64 2154366446, i64 2154366487, i64 2154366508, i64 2154366536, i64 2154366570}
!40 = !{i64 2154376842, i64 2154377330, i64 2154376879, i64 2154376935, i64 2154376969, i64 2154376993, i64 2154377034, i64 2154377055, i64 2154377083, i64 2154377117}
