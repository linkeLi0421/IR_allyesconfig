; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/unwind.c_pt.bc'
source_filename = "../arch/arm/kernel/unwind.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__aeabi_unwind_cpp_pr0\22, \22a\22\09"
module asm "\09.weak\09__crc___aeabi_unwind_cpp_pr0\09\09\09\09"
module asm "\09.long\09__crc___aeabi_unwind_cpp_pr0\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_unwind_cpp_pr0:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_unwind_cpp_pr0\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_unwind_cpp_pr0:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__aeabi_unwind_cpp_pr1\22, \22a\22\09"
module asm "\09.weak\09__crc___aeabi_unwind_cpp_pr1\09\09\09\09"
module asm "\09.long\09__crc___aeabi_unwind_cpp_pr1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_unwind_cpp_pr1:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_unwind_cpp_pr1\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_unwind_cpp_pr1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__aeabi_unwind_cpp_pr2\22, \22a\22\09"
module asm "\09.weak\09__crc___aeabi_unwind_cpp_pr2\09\09\09\09"
module asm "\09.long\09__crc___aeabi_unwind_cpp_pr2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_unwind_cpp_pr2:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_unwind_cpp_pr2\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_unwind_cpp_pr2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.unwind_idx = type { i32, i32 }
%struct.unwind_ctrl_block = type { [16 x i32], ptr, i32, i32, i32, i32 }
%struct.stackframe = type { i32, i32, i32, i32, ptr, ptr }
%struct.unwind_table = type { %struct.list_head, ptr, ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.26, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab___aeabi_unwind_cpp_pr0 = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_unwind_cpp_pr0 = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_unwind_cpp_pr0 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_unwind_cpp_pr0 to i32), ptr @__kstrtab___aeabi_unwind_cpp_pr0, ptr @__kstrtabns___aeabi_unwind_cpp_pr0 }, section "___ksymtab+__aeabi_unwind_cpp_pr0", align 4
@__kstrtab___aeabi_unwind_cpp_pr1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_unwind_cpp_pr1 = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_unwind_cpp_pr1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_unwind_cpp_pr1 to i32), ptr @__kstrtab___aeabi_unwind_cpp_pr1, ptr @__kstrtabns___aeabi_unwind_cpp_pr1 }, section "___ksymtab+__aeabi_unwind_cpp_pr1", align 4
@__kstrtab___aeabi_unwind_cpp_pr2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_unwind_cpp_pr2 = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_unwind_cpp_pr2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_unwind_cpp_pr2 to i32), ptr @__kstrtab___aeabi_unwind_cpp_pr2, ptr @__kstrtabns___aeabi_unwind_cpp_pr2 }, section "___ksymtab+__aeabi_unwind_cpp_pr2", align 4
@unwind_frame.__UNIQUE_ID_ddebug164 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unwind\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unwind_frame\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/kernel/unwind.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(pc = %08lx lr = %08lx sp = %08lx)\0A\00", [58 x i8] zeroinitializer }, align 32
@unwind_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014unwind: Index not found %08lx\0A\00", [63 x i8] zeroinitializer }, align 32
@unwind_frame._entry_ptr = internal global ptr @unwind_frame._entry, section ".printk_index", align 4
@unwind_frame._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014unwind: Unsupported personality routine %08lx in the index at %p\0A\00", [60 x i8] zeroinitializer }, align 32
@unwind_frame._entry_ptr.7 = internal global ptr @unwind_frame._entry.5, section ".printk_index", align 4
@unwind_frame._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014unwind: Unsupported personality routine %08lx at %p\0A\00", [41 x i8] zeroinitializer }, align 32
@unwind_frame._entry_ptr.10 = internal global ptr @unwind_frame._entry.8, section ".printk_index", align 4
@unwind_backtrace.__UNIQUE_ID_ddebug165 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unwind_backtrace\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(regs = %p tsk = %p)\0A\00", [40 x i8] zeroinitializer }, align 32
@unwind_table_add.__UNIQUE_ID_ddebug166 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unwind_table_add\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(%08lx, %08lx, %08lx, %08lx)\0A\00", [32 x i8] zeroinitializer }, align 32
@unwind_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@unwind_tables = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @unwind_tables, ptr @unwind_tables }, [24 x i8] zeroinitializer }, align 32
@unwind_find_idx.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unwind_find_idx\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s(%08lx)\0A\00", [21 x i8] zeroinitializer }, align 32
@__origin_unwind_idx = internal unnamed_addr global ptr null, align 4
@__start_unwind_idx = external dso_local constant [0 x %struct.unwind_idx], align 4
@__stop_unwind_idx = external dso_local constant [0 x %struct.unwind_idx], align 4
@unwind_find_idx.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: idx = %p\0A\00", [18 x i8] zeroinitializer }, align 32
@search_index.__UNIQUE_ID_ddebug156 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"search_index\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(%08lx, %p, %p, %p)\0A\00", [41 x i8] zeroinitializer }, align 32
@search_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014unwind: Unknown symbol address %08lx\0A\00", [56 x i8] zeroinitializer }, align 32
@search_index._entry_ptr = internal global ptr @search_index._entry, section ".printk_index", align 4
@unwind_exec_insn.__UNIQUE_ID_ddebug162 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unwind_exec_insn\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: insn = %08lx\0A\00", [46 x i8] zeroinitializer }, align 32
@unwind_exec_insn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014unwind: 'Refuse to unwind' instruction %04lx\0A\00", [48 x i8] zeroinitializer }, align 32
@unwind_exec_insn._entry_ptr = internal global ptr @unwind_exec_insn._entry, section ".printk_index", align 4
@unwind_exec_insn._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014unwind: Spare encoding %04lx\0A\00", [32 x i8] zeroinitializer }, align 32
@unwind_exec_insn._entry_ptr.26 = internal global ptr @unwind_exec_insn._entry.24, section ".printk_index", align 4
@unwind_exec_insn._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014unwind: Unhandled instruction %02lx\0A\00", [57 x i8] zeroinitializer }, align 32
@unwind_exec_insn._entry_ptr.29 = internal global ptr @unwind_exec_insn._entry.27, section ".printk_index", align 4
@unwind_exec_insn.__UNIQUE_ID_ddebug163 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.30, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: fp = %08lx sp = %08lx lr = %08lx pc = %08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@unwind_get_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014unwind: Corrupt unwind table\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unwind_get_byte\00", [16 x i8] zeroinitializer }, align 32
@unwind_get_byte._entry_ptr = internal global ptr @unwind_get_byte._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@unwind_find_origin.__UNIQUE_ID_ddebug157 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unwind_find_origin\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(%p, %p)\0A\00", [20 x i8] zeroinitializer }, align 32
@unwind_find_origin.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s -> %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unwind_lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2147483648, i64 2164260864]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 144, i64 160]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 176, i64 177, i64 178]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 386, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 394, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 413, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 426, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 464, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 509, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"unwind_lock\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"unwind_tables\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 81, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 172, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 203, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 106, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 144, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 312, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 324, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 348, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 361, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 365, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 212, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 152, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 163, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [28 x i8] c"../arch/arm/kernel/unwind.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 80, i32 8 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab___aeabi_unwind_cpp_pr0, ptr @__ksymtab___aeabi_unwind_cpp_pr1, ptr @__ksymtab___aeabi_unwind_cpp_pr2, ptr @search_index._entry, ptr @search_index._entry_ptr, ptr @unwind_exec_insn._entry, ptr @unwind_exec_insn._entry.24, ptr @unwind_exec_insn._entry.27, ptr @unwind_exec_insn._entry_ptr, ptr @unwind_exec_insn._entry_ptr.26, ptr @unwind_exec_insn._entry_ptr.29, ptr @unwind_frame._entry, ptr @unwind_frame._entry.5, ptr @unwind_frame._entry.8, ptr @unwind_frame._entry_ptr, ptr @unwind_frame._entry_ptr.10, ptr @unwind_frame._entry_ptr.7, ptr @unwind_get_byte._entry, ptr @unwind_get_byte._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @unwind_lock, ptr @unwind_tables, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_frame._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_frame._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_tables to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_exec_insn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_exec_insn._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_exec_insn._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unwind_get_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__aeabi_unwind_cpp_pr0() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__aeabi_unwind_cpp_pr1() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__aeabi_unwind_cpp_pr2() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unwind_frame(ptr nocapture noundef %frame) local_unnamed_addr #1 align 64 {
entry:
  %ctrl = alloca %struct.unwind_ctrl_block, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctrl) #9
  %0 = call ptr @memset(ptr %ctrl, i32 255, i32 84)
  %sp = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 1
  %1 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sp, align 4
  %add = add i32 %2, 16383
  %and = and i32 %add, -16384
  %sp_high = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 2
  %3 = ptrtoint ptr %sp_high to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %sp_high, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_frame.__UNIQUE_ID_ddebug164, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_frame, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pc = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 3
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pc, align 4
  %lr = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 2
  %6 = ptrtoint ptr %lr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lr, align 4
  %8 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sp, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_frame.__UNIQUE_ID_ddebug164, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pc4 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 3
  %10 = ptrtoint ptr %pc4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pc4, align 4
  %call5 = tail call i32 @kernel_text_address(i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.cleanup133_crit_edge, label %if.end8

do.end.cleanup133_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

if.end8:                                          ; preds = %do.end
  %12 = ptrtoint ptr %pc4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pc4, align 4
  %call10 = tail call fastcc ptr @unwind_find_idx(i32 noundef %13)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pc4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pc4, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %15) #12
  br label %cleanup133

if.end19:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame, align 4
  %arrayidx = getelementptr inbounds [16 x i32], ptr %ctrl, i32 0, i32 11
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sp, align 4
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %ctrl, i32 0, i32 13
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx22, align 4
  %lr23 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 2
  %22 = ptrtoint ptr %lr23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lr23, align 4
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %ctrl, i32 0, i32 14
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds [16 x i32], ptr %ctrl, i32 0, i32 15
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx27, align 4
  %insn = getelementptr inbounds %struct.unwind_idx, ptr %call10, i32 0, i32 1
  %26 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %insn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %if.end19.cleanup133_crit_edge, label %if.else

if.end19.cleanup133_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp31 = icmp sgt i32 %27, -1
  br i1 %cmp31, label %if.then32, label %if.else38

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 %27, 1
  %shr = ashr exact i32 %shl, 1
  %28 = ptrtoint ptr %insn to i32
  %add36 = add i32 %shr, %28
  %29 = inttoptr i32 %add36 to ptr
  br label %if.end54

if.else38:                                        ; preds = %if.else
  %and40 = and i32 %27, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and40)
  %cmp41 = icmp eq i32 %and40, -2147483648
  br i1 %cmp41, label %if.else38.if.end54_crit_edge, label %do.end48

if.else38.if.end54_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end48:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %27, ptr noundef nonnull %call10) #12
  br label %cleanup133

if.end54:                                         ; preds = %if.else38.if.end54_crit_edge, %if.then32
  %.sink = phi ptr [ %29, %if.then32 ], [ %insn, %if.else38.if.end54_crit_edge ]
  %insn37 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 1
  %30 = ptrtoint ptr %insn37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink, ptr %insn37, align 4
  %31 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %.sink, align 4
  %and56 = and i32 %32, -16777216
  %33 = zext i32 %and56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and56, label %do.end73 [
    i32 -2147483648, label %if.then58
    i32 -2130706432, label %if.then63
  ]

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %byte = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 5
  %34 = ptrtoint ptr %byte to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %byte, align 4
  br label %if.end79

if.then63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %byte64 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 5
  %35 = ptrtoint ptr %byte64 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %byte64, align 4
  %36 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %.sink, align 4
  %and66 = lshr i32 %37, 16
  %shr67 = and i32 %and66, 255
  %add68 = add nuw nsw i32 %shr67, 1
  br label %if.end79

do.end73:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %32, ptr noundef %.sink) #12
  br label %cleanup133

if.end79:                                         ; preds = %if.then63, %if.then58
  %add68.sink = phi i32 [ %add68, %if.then63 ], [ 1, %if.then58 ]
  %entries69 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 4
  %38 = ptrtoint ptr %entries69 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add68.sink, ptr %entries69, align 4
  %check_each_pop = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 3
  %39 = ptrtoint ptr %check_each_pop to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %check_each_pop, align 4
  %entries80 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %if.end79
  %40 = ptrtoint ptr %entries80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %entries80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp81 = icmp sgt i32 %41, 0
  br i1 %cmp81, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = ptrtoint ptr %sp_high to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sp_high, align 4
  %44 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx22, align 4
  %sub = sub i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp85 = icmp ult i32 %sub, 64
  br i1 %cmp85, label %if.then86, label %while.body.if.end88_crit_edge

while.body.if.end88_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %check_each_pop to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %check_each_pop, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %while.body.if.end88_crit_edge
  %call89 = call fastcc i32 @unwind_exec_insn(ptr noundef nonnull %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end88.cleanup133_crit_edge, label %if.end92

if.end88.cleanup133_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

if.end92:                                         ; preds = %if.end88
  %47 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %2)
  %cmp95 = icmp ult i32 %48, %2
  br i1 %cmp95, label %if.end92.cleanup133_crit_edge, label %cleanup

if.end92.cleanup133_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

cleanup:                                          ; preds = %if.end92
  %49 = ptrtoint ptr %sp_high to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sp_high, align 4
  %cmp99.not = icmp ult i32 %48, %50
  br i1 %cmp99.not, label %cleanup.while.cond_crit_edge, label %cleanup.cleanup133_crit_edge

cleanup.cleanup133_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp104 = icmp eq i32 %52, 0
  br i1 %cmp104, label %if.then105, label %while.end.if.end110_crit_edge

while.end.if.end110_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then105:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx25, align 4
  %55 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx27, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %while.end.if.end110_crit_edge
  %56 = ptrtoint ptr %pc4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pc4, align 4
  %58 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp114 = icmp eq i32 %57, %59
  br i1 %cmp114, label %land.lhs.true, label %if.end110.if.end120_crit_edge

if.end110.if.end120_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true:                                    ; preds = %if.end110
  %60 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sp, align 4
  %62 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp118 = icmp eq i32 %61, %63
  br i1 %cmp118, label %land.lhs.true.cleanup133_crit_edge, label %land.lhs.true.if.end120_crit_edge

land.lhs.true.if.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true.cleanup133_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

if.end120:                                        ; preds = %land.lhs.true.if.end120_crit_edge, %if.end110.if.end120_crit_edge
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %66 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %frame, align 4
  %67 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx22, align 4
  %69 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sp, align 4
  %70 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx25, align 4
  %72 = ptrtoint ptr %lr23 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %lr23, align 4
  %73 = ptrtoint ptr %pc4 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %59, ptr %pc4, align 4
  br label %cleanup133

cleanup133:                                       ; preds = %if.end120, %land.lhs.true.cleanup133_crit_edge, %cleanup.cleanup133_crit_edge, %if.end92.cleanup133_crit_edge, %if.end88.cleanup133_crit_edge, %do.end73, %do.end48, %if.end19.cleanup133_crit_edge, %do.end15, %do.end.cleanup133_crit_edge
  %retval.2 = phi i32 [ 0, %if.end120 ], [ -9, %do.end73 ], [ -9, %do.end48 ], [ -9, %do.end15 ], [ -9, %do.end.cleanup133_crit_edge ], [ -9, %if.end19.cleanup133_crit_edge ], [ -9, %land.lhs.true.cleanup133_crit_edge ], [ %call89, %if.end88.cleanup133_crit_edge ], [ -9, %if.end92.cleanup133_crit_edge ], [ -9, %cleanup.cleanup133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctrl) #9
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_text_address(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unwind_find_idx(i32 noundef %addr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_find_idx.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_find_idx, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_find_idx.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %addr) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @core_kernel_text(i32 noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %0 = load ptr, ptr @__origin_unwind_idx, align 4
  %tobool6.not = icmp eq ptr %0, null
  br i1 %tobool6.not, label %if.then15, label %if.then5.if.end17_crit_edge, !prof !96

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call fastcc ptr @unwind_find_origin(ptr noundef nonnull @__start_unwind_idx, ptr noundef nonnull @__stop_unwind_idx)
  store ptr %call16, ptr @__origin_unwind_idx, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then5.if.end17_crit_edge
  %1 = load ptr, ptr @__origin_unwind_idx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @search_index.__UNIQUE_ID_ddebug156, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_find_idx, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !95

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @search_index.__UNIQUE_ID_ddebug156, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %addr, ptr noundef nonnull @__start_unwind_idx, ptr noundef %1, ptr noundef nonnull @__stop_unwind_idx) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__start_unwind_idx to i32))
  %cmp.i = icmp ult i32 %addr, ptrtoint (ptr @__start_unwind_idx to i32)
  %origin.stop.i = select i1 %cmp.i, ptr %1, ptr @__stop_unwind_idx
  %start.origin.i = select i1 %cmp.i, ptr @__start_unwind_idx, ptr %1
  %2 = ptrtoint ptr %start.origin.i to i32
  %sub.i = sub i32 %addr, %2
  %and.i = and i32 %sub.i, 2147483647
  %add.ptr53.i = getelementptr %struct.unwind_idx, ptr %origin.stop.i, i32 -1
  %cmp554.i = icmp ult ptr %start.origin.i, %add.ptr53.i
  br i1 %cmp554.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.while.end.i_crit_edge

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %start.addr.157.i = phi ptr [ %start.addr.1.add.ptr6.i, %while.body.i.while.body.i_crit_edge ], [ %start.origin.i, %do.end.i.while.body.i_crit_edge ]
  %stop.addr.156.i = phi ptr [ %add.ptr6.stop.addr.1.i, %while.body.i.while.body.i_crit_edge ], [ %origin.stop.i, %do.end.i.while.body.i_crit_edge ]
  %addr_prel31.055.i = phi i32 [ %addr_prel31.0.sub8.i, %while.body.i.while.body.i_crit_edge ], [ %and.i, %do.end.i.while.body.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %stop.addr.156.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %start.addr.157.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shr.i = ashr i32 %sub.ptr.sub.i, 4
  %add.ptr6.i = getelementptr %struct.unwind_idx, ptr %start.addr.157.i, i32 %shr.i
  %add.ptr6.idx.neg.i = mul nsw i32 %shr.i, -8
  %sub8.i = add i32 %add.ptr6.idx.neg.i, %addr_prel31.055.i
  %3 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %4)
  %cmp9.i = icmp ult i32 %sub8.i, %4
  %addr_prel31.0.sub8.i = select i1 %cmp9.i, i32 %addr_prel31.055.i, i32 %sub8.i
  %add.ptr6.stop.addr.1.i = select i1 %cmp9.i, ptr %add.ptr6.i, ptr %stop.addr.156.i
  %start.addr.1.add.ptr6.i = select i1 %cmp9.i, ptr %start.addr.157.i, ptr %add.ptr6.i
  %add.ptr.i = getelementptr %struct.unwind_idx, ptr %add.ptr6.stop.addr.1.i, i32 -1
  %cmp5.i = icmp ult ptr %start.addr.1.add.ptr6.i, %add.ptr.i
  br i1 %cmp5.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end.i.while.end.i_crit_edge
  %addr_prel31.0.lcssa.i = phi i32 [ %and.i, %do.end.i.while.end.i_crit_edge ], [ %addr_prel31.0.sub8.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.1.lcssa.i = phi ptr [ %start.origin.i, %do.end.i.while.end.i_crit_edge ], [ %start.addr.1.add.ptr6.i, %while.body.i.while.end.i_crit_edge ]
  %5 = ptrtoint ptr %start.addr.1.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start.addr.1.lcssa.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %addr_prel31.0.lcssa.i)
  %cmp16.not.i = icmp ugt i32 %6, %addr_prel31.0.lcssa.i
  br i1 %cmp16.not.i, label %do.end27.i, label %while.end.i.do.body50_crit_edge, !prof !96

while.end.i.do.body50_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

do.end27.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %addr) #12
  br label %do.body50

if.else:                                          ; preds = %do.end
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @unwind_lock) #9
  %table.0121 = load ptr, ptr @unwind_tables, align 4
  %cmp25.not122 = icmp eq ptr %table.0121, @unwind_tables
  br i1 %cmp25.not122, label %if.else.do.body41_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.do.body41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %table.0123 = phi ptr [ %table.0, %for.inc.for.body_crit_edge ], [ %table.0121, %if.else.for.body_crit_edge ]
  %begin_addr = getelementptr inbounds %struct.unwind_table, ptr %table.0123, i32 0, i32 4
  %7 = ptrtoint ptr %begin_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %begin_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %addr)
  %cmp29.not = icmp ugt i32 %8, %addr
  br i1 %cmp29.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %end_addr = getelementptr inbounds %struct.unwind_table, ptr %table.0123, i32 0, i32 5
  %9 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addr)
  %cmp31 = icmp ugt i32 %10, %addr
  br i1 %cmp31, label %if.then33, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then33:                                        ; preds = %land.lhs.true
  %start = getelementptr inbounds %struct.unwind_table, ptr %table.0123, i32 0, i32 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start, align 4
  %origin = getelementptr inbounds %struct.unwind_table, ptr %table.0123, i32 0, i32 2
  %13 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %origin, align 4
  %stop = getelementptr inbounds %struct.unwind_table, ptr %table.0123, i32 0, i32 3
  %15 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @search_index.__UNIQUE_ID_ddebug156, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_find_idx, %if.then.i83)) #9
          to label %do.end.i91 [label %if.then.i83], !srcloc !95

if.then.i83:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @search_index.__UNIQUE_ID_ddebug156, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %addr, ptr noundef %12, ptr noundef %14, ptr noundef %16) #9
  br label %do.end.i91

do.end.i91:                                       ; preds = %if.then.i83, %if.then33
  %17 = ptrtoint ptr %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %addr)
  %cmp.i84 = icmp ugt i32 %17, %addr
  %origin.stop.i85 = select i1 %cmp.i84, ptr %14, ptr %16
  %start.origin.i86 = select i1 %cmp.i84, ptr %12, ptr %14
  %18 = ptrtoint ptr %start.origin.i86 to i32
  %sub.i87 = sub i32 %addr, %18
  %and.i88 = and i32 %sub.i87, 2147483647
  %add.ptr53.i89 = getelementptr %struct.unwind_idx, ptr %origin.stop.i85, i32 -1
  %cmp554.i90 = icmp ult ptr %start.origin.i86, %add.ptr53.i89
  br i1 %cmp554.i90, label %do.end.i91.while.body.i108_crit_edge, label %do.end.i91.while.end.i112_crit_edge

do.end.i91.while.end.i112_crit_edge:              ; preds = %do.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i112

do.end.i91.while.body.i108_crit_edge:             ; preds = %do.end.i91
  br label %while.body.i108

while.body.i108:                                  ; preds = %while.body.i108.while.body.i108_crit_edge, %do.end.i91.while.body.i108_crit_edge
  %start.addr.157.i92 = phi ptr [ %start.addr.1.add.ptr6.i105, %while.body.i108.while.body.i108_crit_edge ], [ %start.origin.i86, %do.end.i91.while.body.i108_crit_edge ]
  %stop.addr.156.i93 = phi ptr [ %add.ptr6.stop.addr.1.i104, %while.body.i108.while.body.i108_crit_edge ], [ %origin.stop.i85, %do.end.i91.while.body.i108_crit_edge ]
  %addr_prel31.055.i94 = phi i32 [ %addr_prel31.0.sub8.i103, %while.body.i108.while.body.i108_crit_edge ], [ %and.i88, %do.end.i91.while.body.i108_crit_edge ]
  %sub.ptr.lhs.cast.i95 = ptrtoint ptr %stop.addr.156.i93 to i32
  %sub.ptr.rhs.cast.i96 = ptrtoint ptr %start.addr.157.i92 to i32
  %sub.ptr.sub.i97 = sub i32 %sub.ptr.lhs.cast.i95, %sub.ptr.rhs.cast.i96
  %shr.i98 = ashr i32 %sub.ptr.sub.i97, 4
  %add.ptr6.i99 = getelementptr %struct.unwind_idx, ptr %start.addr.157.i92, i32 %shr.i98
  %add.ptr6.idx.neg.i100 = mul nsw i32 %shr.i98, -8
  %sub8.i101 = add i32 %add.ptr6.idx.neg.i100, %addr_prel31.055.i94
  %19 = ptrtoint ptr %add.ptr6.i99 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr6.i99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i101, i32 %20)
  %cmp9.i102 = icmp ult i32 %sub8.i101, %20
  %addr_prel31.0.sub8.i103 = select i1 %cmp9.i102, i32 %addr_prel31.055.i94, i32 %sub8.i101
  %add.ptr6.stop.addr.1.i104 = select i1 %cmp9.i102, ptr %add.ptr6.i99, ptr %stop.addr.156.i93
  %start.addr.1.add.ptr6.i105 = select i1 %cmp9.i102, ptr %start.addr.157.i92, ptr %add.ptr6.i99
  %add.ptr.i106 = getelementptr %struct.unwind_idx, ptr %add.ptr6.stop.addr.1.i104, i32 -1
  %cmp5.i107 = icmp ult ptr %start.addr.1.add.ptr6.i105, %add.ptr.i106
  br i1 %cmp5.i107, label %while.body.i108.while.body.i108_crit_edge, label %while.body.i108.while.end.i112_crit_edge

while.body.i108.while.end.i112_crit_edge:         ; preds = %while.body.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i112

while.body.i108.while.body.i108_crit_edge:        ; preds = %while.body.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i108

while.end.i112:                                   ; preds = %while.body.i108.while.end.i112_crit_edge, %do.end.i91.while.end.i112_crit_edge
  %addr_prel31.0.lcssa.i109 = phi i32 [ %and.i88, %do.end.i91.while.end.i112_crit_edge ], [ %addr_prel31.0.sub8.i103, %while.body.i108.while.end.i112_crit_edge ]
  %start.addr.1.lcssa.i110 = phi ptr [ %start.origin.i86, %do.end.i91.while.end.i112_crit_edge ], [ %start.addr.1.add.ptr6.i105, %while.body.i108.while.end.i112_crit_edge ]
  %21 = ptrtoint ptr %start.addr.1.lcssa.i110 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start.addr.1.lcssa.i110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %addr_prel31.0.lcssa.i109)
  %cmp16.not.i111 = icmp ugt i32 %22, %addr_prel31.0.lcssa.i109
  br i1 %cmp16.not.i111, label %do.end27.i114, label %while.end.i112.search_index.exit116_crit_edge, !prof !96

while.end.i112.search_index.exit116_crit_edge:    ; preds = %while.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %search_index.exit116

do.end27.i114:                                    ; preds = %while.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  %call29.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %addr) #12
  br label %search_index.exit116

search_index.exit116:                             ; preds = %do.end27.i114, %while.end.i112.search_index.exit116_crit_edge
  %retval.0.i115 = phi ptr [ null, %do.end27.i114 ], [ %start.addr.1.lcssa.i110, %while.end.i112.search_index.exit116_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %table.0123) #9
  br i1 %call.i.i, label %if.end.i.i, label %search_index.exit116.__list_del_entry.exit.i_crit_edge

search_index.exit116.__list_del_entry.exit.i_crit_edge: ; preds = %search_index.exit116
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %search_index.exit116
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %table.0123, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %table.0123 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %table.0123, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %search_index.exit116.__list_del_entry.exit.i_crit_edge
  %29 = load ptr, ptr @unwind_tables, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %table.0123, ptr noundef nonnull @unwind_tables, ptr noundef %29) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.do.body41_crit_edge

__list_del_entry.exit.i.do.body41_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i1.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %table.0123, ptr %prev1.i.i1.i, align 4
  %31 = ptrtoint ptr %table.0123 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %table.0123, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %table.0123, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @unwind_tables, ptr %prev3.i.i.i, align 4
  store volatile ptr %table.0123, ptr @unwind_tables, align 4
  br label %do.body41

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %33 = ptrtoint ptr %table.0123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %table.0 = load ptr, ptr %table.0123, align 4
  %cmp25.not = icmp eq ptr %table.0, @unwind_tables
  br i1 %cmp25.not, label %for.inc.do.body41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

do.body41:                                        ; preds = %for.inc.do.body41_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.do.body41_crit_edge, %if.else.do.body41_crit_edge
  %idx.0 = phi ptr [ %retval.0.i115, %__list_del_entry.exit.i.do.body41_crit_edge ], [ %retval.0.i115, %if.end.i.i.i ], [ null, %if.else.do.body41_crit_edge ], [ null, %for.inc.do.body41_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @unwind_lock, i32 noundef %call21) #9
  br label %do.body50

do.body50:                                        ; preds = %do.body41, %do.end27.i, %while.end.i.do.body50_crit_edge
  %idx.1 = phi ptr [ %idx.0, %do.body41 ], [ null, %do.end27.i ], [ %start.addr.1.lcssa.i, %while.end.i.do.body50_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_find_idx.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_find_idx, %if.then62)) #9
          to label %do.end65 [label %if.then62], !srcloc !95

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_find_idx.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %idx.1) #9
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.body50
  ret ptr %idx.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unwind_exec_insn(ptr noundef %ctrl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entries.i = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %unwind_get_byte.exit

if.end.i:                                         ; preds = %entry
  %insn.i = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 1
  %2 = ptrtoint ptr %insn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %insn.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %byte.i = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 5
  %6 = ptrtoint ptr %byte.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %byte.i, align 4
  %mul.i = shl i32 %7, 3
  %shr.i = lshr i32 %5, %mul.i
  %and.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp eq i32 %7, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr i32, ptr %3, i32 1
  %8 = ptrtoint ptr %insn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %incdec.ptr.i, ptr %insn.i, align 4
  %dec.i = add nsw i32 %1, -1
  %9 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec.i, ptr %entries.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec8.i = add i32 %7, -1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then3.i
  %storemerge.i = phi i32 [ %dec8.i, %if.else.i ], [ 3, %if.then3.i ]
  %10 = ptrtoint ptr %byte.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge.i, ptr %byte.i, align 4
  br label %unwind_get_byte.exit

unwind_get_byte.exit:                             ; preds = %if.end9.i, %do.end.i
  %retval.0.i187 = phi i32 [ 0, %do.end.i ], [ %and.i, %if.end9.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_exec_insn.__UNIQUE_ID_ddebug162, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_exec_insn, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %unwind_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_exec_insn.__UNIQUE_ID_ddebug162, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i187) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %unwind_get_byte.exit
  %11 = trunc i32 %retval.0.i187 to i8
  %trunc = and i8 %11, -64
  %12 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc, label %if.else15 [
    i8 0, label %if.then4
    i8 64, label %if.then9
  ]

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %and5 = shl nuw nsw i32 %retval.0.i187, 2
  %shl = and i32 %and5, 252
  %add = add nuw nsw i32 %shl, 4
  %arrayidx = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add6 = add i32 %add, %14
  store i32 %add6, ptr %arrayidx, align 4
  br label %do.body112

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = shl nuw nsw i32 %retval.0.i187, 2
  %shl11 = and i32 %and10, 252
  %arrayidx14 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 4
  %add12.neg = sub nuw nsw i32 -4, %shl11
  %sub = add i32 %add12.neg, %16
  store i32 %sub, ptr %arrayidx14, align 4
  br label %do.body112

if.else15:                                        ; preds = %do.end
  %trunc314 = and i8 %11, -16
  %17 = zext i8 %trunc314 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %trunc314, label %if.else15.if.else53_crit_edge [
    i8 -128, label %if.then18
    i8 -112, label %land.lhs.true
    i8 -96, label %if.then48
  ]

if.else15.if.else53_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

if.then18:                                        ; preds = %if.else15
  %shl19 = shl nuw nsw i32 %retval.0.i187, 8
  %18 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i189 = icmp slt i32 %19, 1
  br i1 %cmp.i189, label %do.end.i191, label %if.end.i198

do.end.i191:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %call.i190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %unwind_get_byte.exit207

if.end.i198:                                      ; preds = %if.then18
  %insn.i192 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 1
  %20 = ptrtoint ptr %insn.i192 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %insn.i192, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %byte.i193 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 5
  %24 = ptrtoint ptr %byte.i193 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %byte.i193, align 4
  %mul.i194 = shl i32 %25, 3
  %shr.i195 = lshr i32 %23, %mul.i194
  %and.i196 = and i32 %shr.i195, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2.i197 = icmp eq i32 %25, 0
  br i1 %cmp2.i197, label %if.then3.i201, label %if.else.i203

if.then3.i201:                                    ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i199 = getelementptr i32, ptr %21, i32 1
  %26 = ptrtoint ptr %insn.i192 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr.i199, ptr %insn.i192, align 4
  %dec.i200 = add nsw i32 %19, -1
  %27 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec.i200, ptr %entries.i, align 4
  br label %if.end9.i205

if.else.i203:                                     ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #11
  %dec8.i202 = add i32 %25, -1
  br label %if.end9.i205

if.end9.i205:                                     ; preds = %if.else.i203, %if.then3.i201
  %storemerge.i204 = phi i32 [ %dec8.i202, %if.else.i203 ], [ 3, %if.then3.i201 ]
  %28 = ptrtoint ptr %byte.i193 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge.i204, ptr %byte.i193, align 4
  br label %unwind_get_byte.exit207

unwind_get_byte.exit207:                          ; preds = %if.end9.i205, %do.end.i191
  %retval.0.i206 = phi i32 [ 0, %do.end.i191 ], [ %and.i196, %if.end9.i205 ]
  %or = or i32 %retval.0.i206, %shl19
  %and21 = and i32 %or, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %cleanup.thread293, label %while.body.lr.ph.i

cleanup.thread293:                                ; preds = %unwind_get_byte.exit207
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %or) #12
  br label %cleanup136

while.body.lr.ph.i:                               ; preds = %unwind_get_byte.exit207
  %arrayidx.i = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %31 = inttoptr i32 %30 to ptr
  %check_each_pop.i.i = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 3
  %sp_high.i.i = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %reg.030.i = phi i32 [ 4, %while.body.lr.ph.i ], [ %inc.i, %if.end5.i.while.body.i_crit_edge ]
  %mask.addr.029.i = phi i32 [ %and21, %while.body.lr.ph.i ], [ %shr.i209, %if.end5.i.while.body.i_crit_edge ]
  %vsp.027.i = phi ptr [ %31, %while.body.lr.ph.i ], [ %vsp.2.i, %if.end5.i.while.body.i_crit_edge ]
  %and1.i = and i32 %mask.addr.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end5.i_crit_edge, label %if.then.i

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %32 = ptrtoint ptr %check_each_pop.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %check_each_pop.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %if.then.i.unwind_pop_register.exit.thread.i_crit_edge, label %if.then.i.i, !prof !97

if.then.i.unwind_pop_register.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind_pop_register.exit.thread.i

if.then.i.i:                                      ; preds = %if.then.i
  %34 = ptrtoint ptr %sp_high.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sp_high.i.i, align 4
  %36 = inttoptr i32 %35 to ptr
  %cmp.not.i.i = icmp ult ptr %vsp.027.i, %36
  br i1 %cmp.not.i.i, label %if.then.i.i.unwind_pop_register.exit.thread.i_crit_edge, label %if.then.i.i.cleanup136_crit_edge

if.then.i.i.cleanup136_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i.unwind_pop_register.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind_pop_register.exit.thread.i

unwind_pop_register.exit.thread.i:                ; preds = %if.then.i.i.unwind_pop_register.exit.thread.i_crit_edge, %if.then.i.unwind_pop_register.exit.thread.i_crit_edge
  %call.i.i = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %vsp.027.i) #9
  %arrayidx.i.i = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 %reg.030.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call.i.i, ptr %arrayidx.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %vsp.027.i, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %unwind_pop_register.exit.thread.i, %while.body.i.if.end5.i_crit_edge
  %vsp.2.i = phi ptr [ %vsp.027.i, %while.body.i.if.end5.i_crit_edge ], [ %incdec.ptr.i.i, %unwind_pop_register.exit.thread.i ]
  %shr.i209 = lshr i32 %mask.addr.029.i, 1
  %inc.i = add nuw nsw i32 %reg.030.i, 1
  %tobool.not.i = icmp ult i32 %mask.addr.029.i, 2
  br i1 %tobool.not.i, label %while.end.i, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end5.i
  %38 = and i32 %retval.0.i187, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not.i = icmp eq i32 %38, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %while.end.i.do.body112_crit_edge

while.end.i.do.body112_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.then7.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %vsp.2.i to i32
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.i, align 4
  br label %do.body112

land.lhs.true:                                    ; preds = %if.else15
  %and37 = and i32 %retval.0.i187, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and37)
  %cmp38.not = icmp eq i32 %and37, 13
  br i1 %cmp38.not, label %land.lhs.true.if.else53_crit_edge, label %if.then39

land.lhs.true.if.else53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %and41 = and i32 %retval.0.i187, 15
  %arrayidx42 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 %and41
  %41 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx42, align 4
  %arrayidx44 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx44, align 4
  br label %do.body112

if.then48:                                        ; preds = %if.else15
  %arrayidx.i211 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %44 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i211, align 4
  %46 = inttoptr i32 %45 to ptr
  %and.i212 = and i32 %retval.0.i187, 7
  %check_each_pop.i.i213 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 3
  %sp_high.i.i214 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 2
  %47 = add nuw nsw i32 %and.i212, 4
  %48 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i215 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i215, label %if.then48.for.inc.i_crit_edge, label %if.then.i.i217, !prof !97

if.then48.for.inc.i_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i.i217:                                   ; preds = %if.then48
  %50 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sp_high.i.i214, align 4
  %52 = inttoptr i32 %51 to ptr
  %cmp.not.i.i216 = icmp ult ptr %46, %52
  br i1 %cmp.not.i.i216, label %if.then.i.i217.for.inc.i_crit_edge, label %if.then.i.i217.cleanup136_crit_edge

if.then.i.i217.cleanup136_crit_edge:              ; preds = %if.then.i.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.for.inc.i_crit_edge:               ; preds = %if.then.i.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i217.for.inc.i_crit_edge, %if.then48.for.inc.i_crit_edge
  %call.i.i218 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %46) #9
  %arrayidx.i.i219 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx.i.i219 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i.i218, ptr %arrayidx.i.i219, align 4
  %incdec.ptr.i.i220 = getelementptr i32, ptr %46, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i212)
  %exitcond.i = icmp eq i32 %and.i212, 0
  br i1 %exitcond.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i.1

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %54 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i215.1 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i215.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then.i.i217.1, !prof !97

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

if.then.i.i217.1:                                 ; preds = %for.body.i.1
  %56 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sp_high.i.i214, align 4
  %58 = inttoptr i32 %57 to ptr
  %cmp.not.i.i216.1 = icmp ult ptr %incdec.ptr.i.i220, %58
  br i1 %cmp.not.i.i216.1, label %if.then.i.i217.1.for.inc.i.1_crit_edge, label %if.then.i.i217.1.cleanup136_crit_edge

if.then.i.i217.1.cleanup136_crit_edge:            ; preds = %if.then.i.i217.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.1.for.inc.i.1_crit_edge:           ; preds = %if.then.i.i217.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.i217.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %call.i.i218.1 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220) #9
  %arrayidx.i.i219.1 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx.i.i219.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i.i218.1, ptr %arrayidx.i.i219.1, align 4
  %incdec.ptr.i.i220.1 = getelementptr i32, ptr %46, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %exitcond.i.1 = icmp eq i32 %47, 5
  br i1 %exitcond.i.1, label %for.inc.i.1.for.end.i_crit_edge, label %for.body.i.2

for.inc.i.1.for.end.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %60 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i215.2 = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i215.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.then.i.i217.2, !prof !97

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.2

if.then.i.i217.2:                                 ; preds = %for.body.i.2
  %62 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sp_high.i.i214, align 4
  %64 = inttoptr i32 %63 to ptr
  %cmp.not.i.i216.2 = icmp ult ptr %incdec.ptr.i.i220.1, %64
  br i1 %cmp.not.i.i216.2, label %if.then.i.i217.2.for.inc.i.2_crit_edge, label %if.then.i.i217.2.cleanup136_crit_edge

if.then.i.i217.2.cleanup136_crit_edge:            ; preds = %if.then.i.i217.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.2.for.inc.i.2_crit_edge:           ; preds = %if.then.i.i217.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.i217.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  %call.i.i218.2 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220.1) #9
  %arrayidx.i.i219.2 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 6
  %65 = ptrtoint ptr %arrayidx.i.i219.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call.i.i218.2, ptr %arrayidx.i.i219.2, align 4
  %incdec.ptr.i.i220.2 = getelementptr i32, ptr %46, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %47)
  %exitcond.i.2 = icmp eq i32 %47, 6
  br i1 %exitcond.i.2, label %for.inc.i.2.for.end.i_crit_edge, label %for.body.i.3

for.inc.i.2.for.end.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %66 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i215.3 = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i215.3, label %for.body.i.3.for.inc.i.3_crit_edge, label %if.then.i.i217.3, !prof !97

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.3

if.then.i.i217.3:                                 ; preds = %for.body.i.3
  %68 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sp_high.i.i214, align 4
  %70 = inttoptr i32 %69 to ptr
  %cmp.not.i.i216.3 = icmp ult ptr %incdec.ptr.i.i220.2, %70
  br i1 %cmp.not.i.i216.3, label %if.then.i.i217.3.for.inc.i.3_crit_edge, label %if.then.i.i217.3.cleanup136_crit_edge

if.then.i.i217.3.cleanup136_crit_edge:            ; preds = %if.then.i.i217.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.3.for.inc.i.3_crit_edge:           ; preds = %if.then.i.i217.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then.i.i217.3.for.inc.i.3_crit_edge, %for.body.i.3.for.inc.i.3_crit_edge
  %call.i.i218.3 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220.2) #9
  %arrayidx.i.i219.3 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 7
  %71 = ptrtoint ptr %arrayidx.i.i219.3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i.i218.3, ptr %arrayidx.i.i219.3, align 4
  %incdec.ptr.i.i220.3 = getelementptr i32, ptr %46, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %exitcond.i.3 = icmp eq i32 %47, 7
  br i1 %exitcond.i.3, label %for.inc.i.3.for.end.i_crit_edge, label %for.body.i.4

for.inc.i.3.for.end.i_crit_edge:                  ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.inc.i.3
  %72 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i215.4 = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i215.4, label %for.body.i.4.for.inc.i.4_crit_edge, label %if.then.i.i217.4, !prof !97

for.body.i.4.for.inc.i.4_crit_edge:               ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.4

if.then.i.i217.4:                                 ; preds = %for.body.i.4
  %74 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sp_high.i.i214, align 4
  %76 = inttoptr i32 %75 to ptr
  %cmp.not.i.i216.4 = icmp ult ptr %incdec.ptr.i.i220.3, %76
  br i1 %cmp.not.i.i216.4, label %if.then.i.i217.4.for.inc.i.4_crit_edge, label %if.then.i.i217.4.cleanup136_crit_edge

if.then.i.i217.4.cleanup136_crit_edge:            ; preds = %if.then.i.i217.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.4.for.inc.i.4_crit_edge:           ; preds = %if.then.i.i217.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then.i.i217.4.for.inc.i.4_crit_edge, %for.body.i.4.for.inc.i.4_crit_edge
  %call.i.i218.4 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220.3) #9
  %arrayidx.i.i219.4 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 8
  %77 = ptrtoint ptr %arrayidx.i.i219.4 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call.i.i218.4, ptr %arrayidx.i.i219.4, align 4
  %incdec.ptr.i.i220.4 = getelementptr i32, ptr %46, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %exitcond.i.4 = icmp eq i32 %47, 8
  br i1 %exitcond.i.4, label %for.inc.i.4.for.end.i_crit_edge, label %for.body.i.5

for.inc.i.4.for.end.i_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.inc.i.4
  %78 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i215.5 = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i215.5, label %for.body.i.5.for.inc.i.5_crit_edge, label %if.then.i.i217.5, !prof !97

for.body.i.5.for.inc.i.5_crit_edge:               ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.5

if.then.i.i217.5:                                 ; preds = %for.body.i.5
  %80 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sp_high.i.i214, align 4
  %82 = inttoptr i32 %81 to ptr
  %cmp.not.i.i216.5 = icmp ult ptr %incdec.ptr.i.i220.4, %82
  br i1 %cmp.not.i.i216.5, label %if.then.i.i217.5.for.inc.i.5_crit_edge, label %if.then.i.i217.5.cleanup136_crit_edge

if.then.i.i217.5.cleanup136_crit_edge:            ; preds = %if.then.i.i217.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.5.for.inc.i.5_crit_edge:           ; preds = %if.then.i.i217.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then.i.i217.5.for.inc.i.5_crit_edge, %for.body.i.5.for.inc.i.5_crit_edge
  %call.i.i218.5 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220.4) #9
  %arrayidx.i.i219.5 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 9
  %83 = ptrtoint ptr %arrayidx.i.i219.5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call.i.i218.5, ptr %arrayidx.i.i219.5, align 4
  %incdec.ptr.i.i220.5 = getelementptr i32, ptr %46, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %47)
  %exitcond.i.5 = icmp eq i32 %47, 9
  br i1 %exitcond.i.5, label %for.inc.i.5.for.end.i_crit_edge, label %for.body.i.6

for.inc.i.5.for.end.i_crit_edge:                  ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.inc.i.5
  %84 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i215.6 = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i215.6, label %for.body.i.6.for.inc.i.6_crit_edge, label %if.then.i.i217.6, !prof !97

for.body.i.6.for.inc.i.6_crit_edge:               ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.6

if.then.i.i217.6:                                 ; preds = %for.body.i.6
  %86 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sp_high.i.i214, align 4
  %88 = inttoptr i32 %87 to ptr
  %cmp.not.i.i216.6 = icmp ult ptr %incdec.ptr.i.i220.5, %88
  br i1 %cmp.not.i.i216.6, label %if.then.i.i217.6.for.inc.i.6_crit_edge, label %if.then.i.i217.6.cleanup136_crit_edge

if.then.i.i217.6.cleanup136_crit_edge:            ; preds = %if.then.i.i217.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.6.for.inc.i.6_crit_edge:           ; preds = %if.then.i.i217.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.then.i.i217.6.for.inc.i.6_crit_edge, %for.body.i.6.for.inc.i.6_crit_edge
  %call.i.i218.6 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220.5) #9
  %arrayidx.i.i219.6 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 10
  %89 = ptrtoint ptr %arrayidx.i.i219.6 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call.i.i218.6, ptr %arrayidx.i.i219.6, align 4
  %incdec.ptr.i.i220.6 = getelementptr i32, ptr %46, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %47)
  %exitcond.i.6 = icmp eq i32 %47, 10
  br i1 %exitcond.i.6, label %for.inc.i.6.for.end.i_crit_edge, label %for.body.i.7

for.inc.i.6.for.end.i_crit_edge:                  ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.7:                                     ; preds = %for.inc.i.6
  %90 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.i215.7 = icmp eq i32 %91, 0
  br i1 %tobool.not.i.i215.7, label %for.body.i.7.for.inc.i.7_crit_edge, label %if.then.i.i217.7, !prof !97

for.body.i.7.for.inc.i.7_crit_edge:               ; preds = %for.body.i.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.7

if.then.i.i217.7:                                 ; preds = %for.body.i.7
  %92 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sp_high.i.i214, align 4
  %94 = inttoptr i32 %93 to ptr
  %cmp.not.i.i216.7 = icmp ult ptr %incdec.ptr.i.i220.6, %94
  br i1 %cmp.not.i.i216.7, label %if.then.i.i217.7.for.inc.i.7_crit_edge, label %if.then.i.i217.7.cleanup136_crit_edge

if.then.i.i217.7.cleanup136_crit_edge:            ; preds = %if.then.i.i217.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i217.7.for.inc.i.7_crit_edge:           ; preds = %if.then.i.i217.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.7

for.inc.i.7:                                      ; preds = %if.then.i.i217.7.for.inc.i.7_crit_edge, %for.body.i.7.for.inc.i.7_crit_edge
  %call.i.i218.7 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220.6) #9
  %arrayidx.i.i219.7 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 11
  %95 = ptrtoint ptr %arrayidx.i.i219.7 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call.i.i218.7, ptr %arrayidx.i.i219.7, align 4
  %incdec.ptr.i.i220.7 = getelementptr i32, ptr %46, i32 8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.7, %for.inc.i.6.for.end.i_crit_edge, %for.inc.i.5.for.end.i_crit_edge, %for.inc.i.4.for.end.i_crit_edge, %for.inc.i.3.for.end.i_crit_edge, %for.inc.i.2.for.end.i_crit_edge, %for.inc.i.1.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge
  %incdec.ptr.i.i220.lcssa = phi ptr [ %incdec.ptr.i.i220, %for.inc.i.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.1, %for.inc.i.1.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.2, %for.inc.i.2.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.3, %for.inc.i.3.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.4, %for.inc.i.4.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.5, %for.inc.i.5.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.6, %for.inc.i.6.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.7, %for.inc.i.7 ]
  %vsp.044.i.lcssa331 = phi ptr [ %46, %for.inc.i.for.end.i_crit_edge ], [ %incdec.ptr.i.i220, %for.inc.i.1.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.1, %for.inc.i.2.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.2, %for.inc.i.3.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.3, %for.inc.i.4.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.4, %for.inc.i.5.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.5, %for.inc.i.6.for.end.i_crit_edge ], [ %incdec.ptr.i.i220.6, %for.inc.i.7 ]
  %and1.i222 = and i32 %retval.0.i187, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i222)
  %tobool2.not.i223 = icmp eq i32 %and1.i222, 0
  br i1 %tobool2.not.i223, label %for.end.i.unwind_exec_pop_r4_to_rN.exit_crit_edge, label %if.then3.i224

for.end.i.unwind_exec_pop_r4_to_rN.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind_exec_pop_r4_to_rN.exit

if.then3.i224:                                    ; preds = %for.end.i
  %96 = ptrtoint ptr %check_each_pop.i.i213 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %check_each_pop.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i19.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i19.i, label %if.then3.i224.unwind_pop_register.exit28.thread.i_crit_edge, label %if.then.i22.i, !prof !97

if.then3.i224.unwind_pop_register.exit28.thread.i_crit_edge: ; preds = %if.then3.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind_pop_register.exit28.thread.i

if.then.i22.i:                                    ; preds = %if.then3.i224
  %98 = ptrtoint ptr %sp_high.i.i214 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sp_high.i.i214, align 4
  %100 = inttoptr i32 %99 to ptr
  %cmp.not.i21.i = icmp ult ptr %incdec.ptr.i.i220.lcssa, %100
  br i1 %cmp.not.i21.i, label %if.then.i22.i.unwind_pop_register.exit28.thread.i_crit_edge, label %if.then.i22.i.cleanup136_crit_edge

if.then.i22.i.cleanup136_crit_edge:               ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i22.i.unwind_pop_register.exit28.thread.i_crit_edge: ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind_pop_register.exit28.thread.i

unwind_pop_register.exit28.thread.i:              ; preds = %if.then.i22.i.unwind_pop_register.exit28.thread.i_crit_edge, %if.then3.i224.unwind_pop_register.exit28.thread.i_crit_edge
  %call.i23.i = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %incdec.ptr.i.i220.lcssa) #9
  %arrayidx.i24.i = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 14
  %101 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call.i23.i, ptr %arrayidx.i24.i, align 4
  %incdec.ptr.i25.i = getelementptr i32, ptr %vsp.044.i.lcssa331, i32 2
  br label %unwind_exec_pop_r4_to_rN.exit

unwind_exec_pop_r4_to_rN.exit:                    ; preds = %unwind_pop_register.exit28.thread.i, %for.end.i.unwind_exec_pop_r4_to_rN.exit_crit_edge
  %vsp.3.i = phi ptr [ %incdec.ptr.i.i220.lcssa, %for.end.i.unwind_exec_pop_r4_to_rN.exit_crit_edge ], [ %incdec.ptr.i25.i, %unwind_pop_register.exit28.thread.i ]
  %102 = ptrtoint ptr %vsp.3.i to i32
  %103 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx.i211, align 4
  br label %do.body112

if.else53:                                        ; preds = %land.lhs.true.if.else53_crit_edge, %if.else15.if.else53_crit_edge
  %104 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %11, label %do.end101 [
    i8 -80, label %if.then55
    i8 -79, label %if.then67
    i8 -78, label %if.then91
  ]

if.then55:                                        ; preds = %if.else53
  %arrayidx57 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 15
  %105 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp58 = icmp eq i32 %106, 0
  br i1 %cmp58, label %if.then59, label %if.then55.if.end64_crit_edge

if.then55.if.end64_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx61 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 14
  %107 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx61, align 4
  %109 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx57, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.then55.if.end64_crit_edge
  %110 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %entries.i, align 4
  br label %do.body112

if.then67:                                        ; preds = %if.else53
  %111 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp.i227 = icmp slt i32 %112, 1
  br i1 %cmp.i227, label %unwind_get_byte.exit245.thread, label %if.end.i236

unwind_get_byte.exit245.thread:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %call.i228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %cleanup86.thread

if.end.i236:                                      ; preds = %if.then67
  %insn.i230 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 1
  %113 = ptrtoint ptr %insn.i230 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %insn.i230, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %byte.i231 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 5
  %117 = ptrtoint ptr %byte.i231 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %byte.i231, align 4
  %mul.i232 = shl i32 %118, 3
  %shr.i233 = lshr i32 %116, %mul.i232
  %and.i234 = and i32 %shr.i233, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp2.i235 = icmp eq i32 %118, 0
  br i1 %cmp2.i235, label %if.then3.i239, label %if.else.i241

if.then3.i239:                                    ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i237 = getelementptr i32, ptr %114, i32 1
  %119 = ptrtoint ptr %insn.i230 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %incdec.ptr.i237, ptr %insn.i230, align 4
  %dec.i238 = add nsw i32 %112, -1
  %120 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %dec.i238, ptr %entries.i, align 4
  br label %unwind_get_byte.exit245

if.else.i241:                                     ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #11
  %dec8.i240 = add i32 %118, -1
  br label %unwind_get_byte.exit245

unwind_get_byte.exit245:                          ; preds = %if.else.i241, %if.then3.i239
  %storemerge.i242 = phi i32 [ %dec8.i240, %if.else.i241 ], [ 3, %if.then3.i239 ]
  %121 = ptrtoint ptr %byte.i231 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %storemerge.i242, ptr %byte.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %cmp70 = icmp ne i32 %and.i234, 0
  %and71 = and i32 %shr.i233, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %or.cond = and i1 %cmp70, %tobool72.not
  br i1 %or.cond, label %while.body.lr.ph.i249, label %unwind_get_byte.exit245.cleanup86.thread_crit_edge

unwind_get_byte.exit245.cleanup86.thread_crit_edge: ; preds = %unwind_get_byte.exit245
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup86.thread

cleanup86.thread:                                 ; preds = %unwind_get_byte.exit245.cleanup86.thread_crit_edge, %unwind_get_byte.exit245.thread
  %retval.0.i244303 = phi i32 [ 0, %unwind_get_byte.exit245.thread ], [ %and.i234, %unwind_get_byte.exit245.cleanup86.thread_crit_edge ]
  %or79 = or i32 %retval.0.i244303, 45312
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %or79) #12
  br label %cleanup136

while.body.lr.ph.i249:                            ; preds = %unwind_get_byte.exit245
  %arrayidx.i246 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %122 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i246, align 4
  %124 = inttoptr i32 %123 to ptr
  %check_each_pop.i.i247 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 3
  %sp_high.i.i248 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 2
  br label %while.body.i251

while.body.i251:                                  ; preds = %if.end4.i.while.body.i251_crit_edge, %while.body.lr.ph.i249
  %reg.024.i = phi i32 [ 0, %while.body.lr.ph.i249 ], [ %inc.i262, %if.end4.i.while.body.i251_crit_edge ]
  %mask.addr.023.i = phi i32 [ %and.i234, %while.body.lr.ph.i249 ], [ %shr.i261, %if.end4.i.while.body.i251_crit_edge ]
  %vsp.021.i = phi ptr [ %124, %while.body.lr.ph.i249 ], [ %vsp.2.i260, %if.end4.i.while.body.i251_crit_edge ]
  %and.i250 = and i32 %mask.addr.023.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i250)
  %tobool1.not.i = icmp eq i32 %and.i250, 0
  br i1 %tobool1.not.i, label %while.body.i251.if.end4.i_crit_edge, label %if.then.i253

while.body.i251.if.end4.i_crit_edge:              ; preds = %while.body.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i253:                                     ; preds = %while.body.i251
  %125 = ptrtoint ptr %check_each_pop.i.i247 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %check_each_pop.i.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i.i252 = icmp eq i32 %126, 0
  br i1 %tobool.not.i.i252, label %if.then.i253.unwind_pop_register.exit.thread.i259_crit_edge, label %if.then.i.i255, !prof !97

if.then.i253.unwind_pop_register.exit.thread.i259_crit_edge: ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind_pop_register.exit.thread.i259

if.then.i.i255:                                   ; preds = %if.then.i253
  %127 = ptrtoint ptr %sp_high.i.i248 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sp_high.i.i248, align 4
  %129 = inttoptr i32 %128 to ptr
  %cmp.not.i.i254 = icmp ult ptr %vsp.021.i, %129
  br i1 %cmp.not.i.i254, label %if.then.i.i255.unwind_pop_register.exit.thread.i259_crit_edge, label %if.then.i.i255.cleanup136_crit_edge

if.then.i.i255.cleanup136_crit_edge:              ; preds = %if.then.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup136

if.then.i.i255.unwind_pop_register.exit.thread.i259_crit_edge: ; preds = %if.then.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %unwind_pop_register.exit.thread.i259

unwind_pop_register.exit.thread.i259:             ; preds = %if.then.i.i255.unwind_pop_register.exit.thread.i259_crit_edge, %if.then.i253.unwind_pop_register.exit.thread.i259_crit_edge
  %call.i.i256 = tail call fastcc i32 @__read_once_word_nocheck(ptr noundef %vsp.021.i) #9
  %arrayidx.i.i257 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 %reg.024.i
  %130 = ptrtoint ptr %arrayidx.i.i257 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %call.i.i256, ptr %arrayidx.i.i257, align 4
  %incdec.ptr.i.i258 = getelementptr i32, ptr %vsp.021.i, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %unwind_pop_register.exit.thread.i259, %while.body.i251.if.end4.i_crit_edge
  %vsp.2.i260 = phi ptr [ %vsp.021.i, %while.body.i251.if.end4.i_crit_edge ], [ %incdec.ptr.i.i258, %unwind_pop_register.exit.thread.i259 ]
  %shr.i261 = lshr i32 %mask.addr.023.i, 1
  %inc.i262 = add nuw nsw i32 %reg.024.i, 1
  %tobool.not.i263 = icmp ult i32 %mask.addr.023.i, 2
  br i1 %tobool.not.i263, label %cleanup86.thread310, label %if.end4.i.while.body.i251_crit_edge

if.end4.i.while.body.i251_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i251

cleanup86.thread310:                              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %vsp.2.i260 to i32
  %132 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx.i246, align 4
  br label %do.body112

if.then91:                                        ; preds = %if.else53
  %133 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp.i267 = icmp slt i32 %134, 1
  br i1 %cmp.i267, label %do.end.i269, label %if.end.i276

do.end.i269:                                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %call.i268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %unwind_get_byte.exit285

if.end.i276:                                      ; preds = %if.then91
  %insn.i270 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 1
  %135 = ptrtoint ptr %insn.i270 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %insn.i270, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %byte.i271 = getelementptr inbounds %struct.unwind_ctrl_block, ptr %ctrl, i32 0, i32 5
  %139 = ptrtoint ptr %byte.i271 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %byte.i271, align 4
  %mul.i272 = shl i32 %140, 3
  %shr.i273 = lshr i32 %138, %mul.i272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp2.i275 = icmp eq i32 %140, 0
  br i1 %cmp2.i275, label %if.then3.i279, label %if.else.i281

if.then3.i279:                                    ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i277 = getelementptr i32, ptr %136, i32 1
  %141 = ptrtoint ptr %insn.i270 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %incdec.ptr.i277, ptr %insn.i270, align 4
  %dec.i278 = add nsw i32 %134, -1
  %142 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %dec.i278, ptr %entries.i, align 4
  br label %if.end9.i283

if.else.i281:                                     ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #11
  %dec8.i280 = add i32 %140, -1
  br label %if.end9.i283

if.end9.i283:                                     ; preds = %if.else.i281, %if.then3.i279
  %storemerge.i282 = phi i32 [ %dec8.i280, %if.else.i281 ], [ 3, %if.then3.i279 ]
  %143 = ptrtoint ptr %byte.i271 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %storemerge.i282, ptr %byte.i271, align 4
  %and.i274 = shl i32 %shr.i273, 2
  %phi.bo = and i32 %and.i274, 1020
  %phi.bo316 = add nuw nsw i32 %phi.bo, 516
  br label %unwind_get_byte.exit285

unwind_get_byte.exit285:                          ; preds = %if.end9.i283, %do.end.i269
  %retval.0.i284 = phi i32 [ 516, %do.end.i269 ], [ %phi.bo316, %if.end9.i283 ]
  %arrayidx96 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %144 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx96, align 4
  %add97 = add i32 %145, %retval.0.i284
  store i32 %add97, ptr %arrayidx96, align 4
  br label %do.body112

do.end101:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %retval.0.i187) #12
  br label %cleanup136

do.body112:                                       ; preds = %unwind_get_byte.exit285, %cleanup86.thread310, %if.end64, %unwind_exec_pop_r4_to_rN.exit, %if.then39, %if.then7.i, %while.end.i.do.body112_crit_edge, %if.then9, %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_exec_insn.__UNIQUE_ID_ddebug163, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_exec_insn, %if.then124)) #9
          to label %cleanup136 [label %if.then124], !srcloc !95

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx126 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 11
  %146 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx126, align 4
  %arrayidx128 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 13
  %148 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx128, align 4
  %arrayidx130 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 14
  %150 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx130, align 4
  %arrayidx132 = getelementptr [16 x i32], ptr %ctrl, i32 0, i32 15
  %152 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx132, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_exec_insn.__UNIQUE_ID_ddebug163, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.21, i32 noundef %147, i32 noundef %149, i32 noundef %151, i32 noundef %153) #9
  br label %cleanup136

cleanup136:                                       ; preds = %if.then124, %do.body112, %do.end101, %if.then.i.i255.cleanup136_crit_edge, %cleanup86.thread, %if.then.i22.i.cleanup136_crit_edge, %if.then.i.i217.7.cleanup136_crit_edge, %if.then.i.i217.6.cleanup136_crit_edge, %if.then.i.i217.5.cleanup136_crit_edge, %if.then.i.i217.4.cleanup136_crit_edge, %if.then.i.i217.3.cleanup136_crit_edge, %if.then.i.i217.2.cleanup136_crit_edge, %if.then.i.i217.1.cleanup136_crit_edge, %if.then.i.i217.cleanup136_crit_edge, %if.then.i.i.cleanup136_crit_edge, %cleanup.thread293
  %retval.2 = phi i32 [ -9, %do.end101 ], [ -9, %cleanup.thread293 ], [ -9, %cleanup86.thread ], [ 0, %if.then124 ], [ 0, %do.body112 ], [ -9, %if.then.i22.i.cleanup136_crit_edge ], [ -9, %if.then.i.i255.cleanup136_crit_edge ], [ -9, %if.then.i.i.cleanup136_crit_edge ], [ -9, %if.then.i.i217.7.cleanup136_crit_edge ], [ -9, %if.then.i.i217.6.cleanup136_crit_edge ], [ -9, %if.then.i.i217.5.cleanup136_crit_edge ], [ -9, %if.then.i.i217.4.cleanup136_crit_edge ], [ -9, %if.then.i.i217.3.cleanup136_crit_edge ], [ -9, %if.then.i.i217.2.cleanup136_crit_edge ], [ -9, %if.then.i.i217.1.cleanup136_crit_edge ], [ -9, %if.then.i.i217.cleanup136_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unwind_backtrace(ptr noundef %regs, ptr noundef %tsk, ptr noundef %loglvl) #1 align 64 {
entry:
  %frame = alloca %struct.stackframe, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frame) #9
  %0 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 3
  %3 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 4
  %4 = getelementptr inbounds %struct.stackframe, ptr %frame, i32 0, i32 5
  %5 = call ptr @memset(ptr %frame, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_backtrace.__UNIQUE_ID_ddebug165, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_backtrace, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_backtrace.__UNIQUE_ID_ddebug165, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %regs, ptr noundef %tsk) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %tsk, null
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %tsk.addr.0 = phi ptr [ %tsk, %do.end.if.end6_crit_edge ], [ %9, %if.then4 ]
  %tobool7.not = icmp eq ptr %regs, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %frame, align 4
  %arrayidx2.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %0, align 4
  %arrayidx4.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %1, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %3, align 4
  %23 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %4, align 4
  %call9 = tail call i32 @kernel_text_address(i32 noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then8.if.end32_crit_edge

if.then8.if.end32_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i, align 4
  br label %if.end32.sink.split

if.else:                                          ; preds = %if.end6
  %30 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i50 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i50 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task16, align 8
  %cmp = icmp eq ptr %tsk.addr.0, %33
  br i1 %cmp, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call ptr @llvm.frameaddress.p0(i32 0)
  %35 = ptrtoint ptr %34 to i32
  %36 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %frame, align 4
  %37 = tail call i32 @llvm.read_register.i32(metadata !85)
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %0, align 4
  %39 = tail call ptr @llvm.returnaddress(i32 0)
  %40 = ptrtoint ptr %39 to i32
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %1, align 4
  br label %if.end32.sink.split

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %stack = getelementptr inbounds %struct.task_struct, ptr %tsk.addr.0, i32 0, i32 1
  %42 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stack, align 4
  %fp20 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 5, i32 7
  %44 = ptrtoint ptr %fp20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fp20, align 4
  %46 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %frame, align 4
  %sp24 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 5, i32 8
  %47 = ptrtoint ptr %sp24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sp24, align 4
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %0, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %1, align 4
  %pc29 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 5, i32 9
  %51 = ptrtoint ptr %pc29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pc29, align 4
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.else19, %if.then17, %if.then11
  %.sink = phi i32 [ ptrtoint (ptr @unwind_backtrace to i32), %if.then17 ], [ %52, %if.else19 ], [ %29, %if.then11 ]
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %2, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.then8.if.end32_crit_edge
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %2, align 4
  %call3454 = call i32 @unwind_frame(ptr noundef nonnull %frame)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3454)
  %cmp3555 = icmp slt i32 %call3454, 0
  br i1 %cmp3555, label %if.end32.while.end_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  br label %cleanup

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  %56 = phi i32 [ %58, %cleanup.cleanup_crit_edge ], [ %55, %if.end32.cleanup_crit_edge ]
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %2, align 4
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %0, align 4
  %sub = add i32 %60, -4
  tail call void @dump_backtrace_entry(i32 noundef %56, i32 noundef %58, i32 noundef %sub, ptr noundef %loglvl) #9
  %call34 = call i32 @unwind_frame(ptr noundef nonnull %frame)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %cleanup.while.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end32.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_backtrace_entry(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @unwind_table_add(i32 noundef %start, i32 noundef %size, i32 noundef %text_addr, i32 noundef %text_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 28) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_table_add.__UNIQUE_ID_ddebug166, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_table_add, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_table_add.__UNIQUE_ID_ddebug166, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %start, i32 noundef %size, i32 noundef %text_addr, i32 noundef %text_size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %1 = inttoptr i32 %start to ptr
  %start7 = getelementptr inbounds %struct.unwind_table, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %start7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %start7, align 8
  %add = add i32 %size, %start
  %3 = inttoptr i32 %add to ptr
  %stop = getelementptr inbounds %struct.unwind_table, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %stop, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_find_origin.__UNIQUE_ID_ddebug157, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_table_add, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !95

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_find_origin.__UNIQUE_ID_ddebug157, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, ptr noundef %1, ptr noundef %3) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end6
  %cmp36.i = icmp ult ptr %1, %3
  br i1 %cmp36.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.do.body7.i_crit_edge

do.end.i.do.body7.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7.i

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %start.addr.038.i = phi ptr [ %start.addr.1.i, %while.body.i.while.body.i_crit_edge ], [ %1, %do.end.i.while.body.i_crit_edge ]
  %stop.addr.037.i = phi ptr [ %stop.addr.1.i, %while.body.i.while.body.i_crit_edge ], [ %3, %do.end.i.while.body.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %stop.addr.037.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %start.addr.038.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shr.i = ashr i32 %sub.ptr.sub.i, 4
  %add.ptr.i = getelementptr %struct.unwind_idx, ptr %start.addr.038.i, i32 %shr.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %6)
  %cmp3.i = icmp ugt i32 %6, 1073741823
  %add.ptr5.i = getelementptr %struct.unwind_idx, ptr %add.ptr.i, i32 1
  %stop.addr.1.i = select i1 %cmp3.i, ptr %stop.addr.037.i, ptr %add.ptr.i
  %start.addr.1.i = select i1 %cmp3.i, ptr %add.ptr5.i, ptr %start.addr.038.i
  %cmp.i = icmp ult ptr %start.addr.1.i, %stop.addr.1.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.do.body7.i_crit_edge

while.body.i.do.body7.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.body7.i:                                       ; preds = %while.body.i.do.body7.i_crit_edge, %do.end.i.do.body7.i_crit_edge
  %stop.addr.0.lcssa.i = phi ptr [ %3, %do.end.i.do.body7.i_crit_edge ], [ %stop.addr.1.i, %while.body.i.do.body7.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_find_origin.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_table_add, %if.then19.i)) #9
          to label %unwind_find_origin.exit [label %if.then19.i], !srcloc !95

if.then19.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_find_origin.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef %stop.addr.0.lcssa.i) #9
  br label %unwind_find_origin.exit

unwind_find_origin.exit:                          ; preds = %if.then19.i, %do.body7.i
  %origin = getelementptr inbounds %struct.unwind_table, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %origin to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %stop.addr.0.lcssa.i, ptr %origin, align 4
  %begin_addr = getelementptr inbounds %struct.unwind_table, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %begin_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %text_addr, ptr %begin_addr, align 4
  %add11 = add i32 %text_size, %text_addr
  %end_addr = getelementptr inbounds %struct.unwind_table, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add11, ptr %end_addr, align 8
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @unwind_lock) #9
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @unwind_tables, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %10, ptr noundef nonnull @unwind_tables) #9
  br i1 %call.i.i, label %if.end.i.i, label %unwind_find_origin.exit.list_add_tail.exit_crit_edge

unwind_find_origin.exit.list_add_tail.exit_crit_edge: ; preds = %unwind_find_origin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %unwind_find_origin.exit
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i, ptr getelementptr inbounds (%struct.list_head, ptr @unwind_tables, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @unwind_tables, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %unwind_find_origin.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @unwind_lock, i32 noundef %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unwind_find_origin(ptr noundef %start, ptr noundef %stop) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_find_origin.__UNIQUE_ID_ddebug157, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_find_origin, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_find_origin.__UNIQUE_ID_ddebug157, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, ptr noundef %start, ptr noundef %stop) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp36 = icmp ult ptr %start, %stop
  br i1 %cmp36, label %do.end.while.body_crit_edge, label %do.end.do.body7_crit_edge

do.end.do.body7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %start.addr.038 = phi ptr [ %start.addr.1, %while.body.while.body_crit_edge ], [ %start, %do.end.while.body_crit_edge ]
  %stop.addr.037 = phi ptr [ %stop.addr.1, %while.body.while.body_crit_edge ], [ %stop, %do.end.while.body_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %stop.addr.037 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %start.addr.038 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr = ashr i32 %sub.ptr.sub, 4
  %add.ptr = getelementptr %struct.unwind_idx, ptr %start.addr.038, i32 %shr
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %1)
  %cmp3 = icmp ugt i32 %1, 1073741823
  %add.ptr5 = getelementptr %struct.unwind_idx, ptr %add.ptr, i32 1
  %stop.addr.1 = select i1 %cmp3, ptr %stop.addr.037, ptr %add.ptr
  %start.addr.1 = select i1 %cmp3, ptr %add.ptr5, ptr %start.addr.038
  %cmp = icmp ult ptr %start.addr.1, %stop.addr.1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.do.body7_crit_edge

while.body.do.body7_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body7:                                         ; preds = %while.body.do.body7_crit_edge, %do.end.do.body7_crit_edge
  %stop.addr.0.lcssa = phi ptr [ %stop, %do.end.do.body7_crit_edge ], [ %stop.addr.1, %while.body.do.body7_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unwind_find_origin.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unwind_find_origin, %if.then19)) #9
          to label %do.end21 [label %if.then19], !srcloc !95

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @unwind_find_origin.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef %stop.addr.0.lcssa) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then19, %do.body7
  ret ptr %stop.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unwind_table_del(ptr noundef %tab) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tab, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @unwind_lock) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %tab) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_del.exit_crit_edge

do.body.list_del.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tab, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tab, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body.list_del.exit_crit_edge
  %6 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %tab, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tab, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @unwind_lock, i32 noundef %call) #9
  tail call void @kfree(ptr noundef nonnull %tab) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_kernel_text(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__read_once_word_nocheck(ptr noundef %addr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load volatile i32, ptr %addr, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__ksymtab___aeabi_unwind_cpp_pr0, !1, !"__ksymtab___aeabi_unwind_cpp_pr0", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/unwind.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab___aeabi_unwind_cpp_pr1, !3, !"__ksymtab___aeabi_unwind_cpp_pr1", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/unwind.c", i32 45, i32 1}
!4 = !{ptr @__ksymtab___aeabi_unwind_cpp_pr2, !5, !"__ksymtab___aeabi_unwind_cpp_pr2", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/unwind.c", i32 50, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/unwind.c", i32 386, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @unwind_frame.__UNIQUE_ID_ddebug164, !7, !"__UNIQUE_ID_ddebug164", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/unwind.c", i32 394, i32 3}
!14 = !{ptr @unwind_frame._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @unwind_frame._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/kernel/unwind.c", i32 413, i32 3}
!18 = !{ptr @unwind_frame._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @unwind_frame._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/unwind.c", i32 426, i32 3}
!22 = !{ptr @unwind_frame._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @unwind_frame._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/unwind.c", i32 464, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @unwind_backtrace.__UNIQUE_ID_ddebug165, !25, !"__UNIQUE_ID_ddebug165", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/unwind.c", i32 509, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @unwind_table_add.__UNIQUE_ID_ddebug166, !29, !"__UNIQUE_ID_ddebug166", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/kernel/unwind.c", i32 172, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @unwind_find_idx.__UNIQUE_ID_ddebug159, !33, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/kernel/unwind.c", i32 203, i32 2}
!38 = !{ptr @unwind_find_idx.__UNIQUE_ID_ddebug160, !37, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!39 = !{ptr @__origin_unwind_idx, !40, !"__origin_unwind_idx", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/unwind.c", i32 77, i32 33}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/kernel/unwind.c", i32 106, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @search_index.__UNIQUE_ID_ddebug156, !42, !"__UNIQUE_ID_ddebug156", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/kernel/unwind.c", i32 144, i32 3}
!47 = !{ptr @search_index._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @search_index._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/kernel/unwind.c", i32 312, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @unwind_exec_insn.__UNIQUE_ID_ddebug162, !50, !"__UNIQUE_ID_ddebug162", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/kernel/unwind.c", i32 324, i32 4}
!55 = !{ptr @unwind_exec_insn._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @unwind_exec_insn._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/kernel/unwind.c", i32 348, i32 4}
!59 = !{ptr @unwind_exec_insn._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @unwind_exec_insn._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/kernel/unwind.c", i32 361, i32 3}
!63 = !{ptr @unwind_exec_insn._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @unwind_exec_insn._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/kernel/unwind.c", i32 365, i32 2}
!67 = !{ptr @unwind_exec_insn.__UNIQUE_ID_ddebug163, !66, !"__UNIQUE_ID_ddebug163", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/kernel/unwind.c", i32 212, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @unwind_get_byte._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @unwind_get_byte._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/kernel/unwind.c", i32 152, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @unwind_find_origin.__UNIQUE_ID_ddebug157, !74, !"__UNIQUE_ID_ddebug157", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/kernel/unwind.c", i32 163, i32 2}
!79 = !{ptr @unwind_find_origin.__UNIQUE_ID_ddebug158, !78, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/kernel/unwind.c", i32 80, i32 8}
!82 = !{ptr @unwind_lock, !81, !"unwind_lock", i1 false, i1 false}
!83 = !{ptr @unwind_tables, !84, !"unwind_tables", i1 false, i1 false}
!84 = !{!"../arch/arm/kernel/unwind.c", i32 81, i32 8}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148702997, i64 2148703002, i64 2148703015, i64 2148703059, i64 2148703093, i64 2148703114}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{!"branch_weights", i32 2000, i32 1}
