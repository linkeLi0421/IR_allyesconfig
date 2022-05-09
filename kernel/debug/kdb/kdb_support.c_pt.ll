; ModuleID = '/llk/IR_all_yes/kernel/debug/kdb/kdb_support.c_pt.bc'
source_filename = "../kernel/debug/kdb/kdb_support.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kdbgetsymval\22, \22a\22\09"
module asm "\09.weak\09__crc_kdbgetsymval\09\09\09\09"
module asm "\09.long\09__crc_kdbgetsymval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kdbgetsymval:\09\09\09\09\09"
module asm "\09.asciz \09\22kdbgetsymval\22\09\09\09\09\09"
module asm "__kstrtabns_kdbgetsymval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.debuggerinfo_struct = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.__ksymtab = type { i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.41, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.41 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@kdb_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: symname=%s, symtab=%px\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.kdbgetsymval = private unnamed_addr constant [13 x i8] c"kdbgetsymval\00", align 1
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: returns 1, symtab->sym_start=0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: returns 0\0A\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_kdbgetsymval = external dso_local constant [0 x i8], align 1
@__kstrtabns_kdbgetsymval = external dso_local constant [0 x i8], align 1
@__ksymtab_kdbgetsymval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kdbgetsymval to i32), ptr @__kstrtab_kdbgetsymval, ptr @__kstrtabns_kdbgetsymval }, section "___ksymtab+kdbgetsymval", align 4
@kdbnearsym.namebuf = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: addr=0x%lx, symtab=%px\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.kdbnearsym = private unnamed_addr constant [11 x i8] c"kdbnearsym\00", align 1
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s: returns %d symtab->sym_start=0x%lx, symtab->mod_name=%px, symtab->sym_name=%px (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@ks_namebuf = internal global { [129 x i8], [63 x i8] } zeroinitializer, align 32
@ks_namebuf_prev = internal global { [129 x i8], [63 x i8] } zeroinitializer, align 32
@kallsyms_symbol_next.pos = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08lx\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"(\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%s]\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"+0x%lx\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"/0x%lx\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kdb_state = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Bad address 0x%lx\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.kdb_getarea_size = private unnamed_addr constant [17 x i8] c"kdb_getarea_size\00", align 1
@__func__.kdb_putarea_size = private unnamed_addr constant [17 x i8] c"kdb_putarea_size\00", align 1
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: bad width %zu\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.kdb_getphysword = private unnamed_addr constant [16 x i8] c"kdb_getphysword\00", align 1
@__func__.kdb_getword = private unnamed_addr constant [12 x i8] c"kdb_getword\00", align 1
@__func__.kdb_putword = private unnamed_addr constant [12 x i8] c"kdb_putword\00", align 1
@kgdb_info = external dso_local local_unnamed_addr global [0 x %struct.debuggerinfo_struct], align 4
@kdb_initial_cpu = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMS\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-ims\00", [27 x i8] zeroinitializer }, align 32
@kdb_flags_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kdb_flags_stack = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@task_index_to_char.state_char = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RSDTtXZPI\00", [22 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 42, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 46, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 50, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"namebuf\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 89, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 106, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 107, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"ks_namebuf\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 113, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"ks_namebuf_prev\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 113, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 174, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 212, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 214, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 219, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 221, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 222, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 224, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 226, i32 15 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 229, i32 15 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 234, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 272, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 379, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 506, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 532, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"kdb_flags_index\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 545, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"kdb_flags_stack\00", align 1
@___asan_gen_.94 = private constant [34 x i8] c"../kernel/debug/kdb/kdb_support.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 545, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"state_char\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1638, i32 20 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_kdbgetsymval, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @kdbnearsym.namebuf, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ks_namebuf, ptr @ks_namebuf_prev, ptr @kallsyms_symbol_next.pos, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @kdb_flags_index, ptr @kdb_flags_stack, ptr @task_index_to_char.state_char], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdbnearsym.namebuf to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_namebuf to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks_namebuf_prev to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kallsyms_symbol_next.pos to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_flags_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_flags_stack to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_index_to_char.state_char to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdbgetsymval(ptr noundef %symname, ptr noundef %symtab) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %0 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.kdbgetsymval, ptr noundef %symname, ptr noundef %symtab) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %1 = call ptr @memset(ptr %symtab, i32 0, i32 40)
  %call1 = tail call i32 @kallsyms_lookup_name(ptr noundef %symname) #9
  %sym_start = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 8
  %2 = ptrtoint ptr %sym_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %sym_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %3 = load i32, ptr @kdb_flags, align 4
  %and15 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool3.not, label %do.body14, label %do.body5

do.body5:                                         ; preds = %do.end
  br i1 %tobool16.not, label %do.body5.return_crit_edge, label %if.then8

do.body5.return_crit_edge:                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.kdbgetsymval, i32 noundef %call1) #9
  br label %return

do.body14:                                        ; preds = %do.end
  br i1 %tobool16.not, label %do.body14.return_crit_edge, label %if.then17

do.body14.return_crit_edge:                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.kdbgetsymval) #9
  br label %return

return:                                           ; preds = %if.then17, %do.body14.return_crit_edge, %if.then8, %do.body5.return_crit_edge
  %retval.0 = phi i32 [ 1, %do.body5.return_crit_edge ], [ 1, %if.then8 ], [ 0, %do.body14.return_crit_edge ], [ 0, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_lookup_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdbnearsym(i32 noundef %addr, ptr noundef %symtab) local_unnamed_addr #0 align 64 {
entry:
  %symbolsize = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %symbolsize) #9
  %0 = ptrtoint ptr %symbolsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %symbolsize, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %2 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.kdbnearsym, i32 noundef %addr, ptr noundef %symtab) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %3 = call ptr @memset(ptr %symtab, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %addr)
  %cmp = icmp ult i32 %addr, 4096
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end2

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end2:                                          ; preds = %do.end
  %mod_name = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 1
  %call3 = call ptr @kallsyms_lookup(i32 noundef %addr, ptr noundef nonnull %symbolsize, ptr noundef nonnull %offset, ptr noundef %mod_name, ptr noundef nonnull @kdbnearsym.namebuf) #9
  %sym_name = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 7
  %4 = ptrtoint ptr %sym_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %sym_name, align 4
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %6)
  %cmp4 = icmp ugt i32 %6, 8388608
  br i1 %cmp4, label %if.then5, label %if.end2.if.end7_crit_edge

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %sym_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sym_name, align 4
  %8 = ptrtoint ptr %symbolsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %symbolsize, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %offset, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2.if.end7_crit_edge
  %addr.addr.0 = phi i32 [ 0, %if.then5 ], [ %addr, %if.end2.if.end7_crit_edge ]
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %sub = sub i32 %addr.addr.0, %11
  %sym_start = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 8
  %12 = ptrtoint ptr %sym_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %sym_start, align 4
  %13 = ptrtoint ptr %symbolsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %symbolsize, align 4
  %add = add i32 %14, %sub
  %sym_end = getelementptr inbounds %struct.__ksymtab, ptr %symtab, i32 0, i32 9
  %15 = ptrtoint ptr %sym_end to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %sym_end, align 4
  %16 = ptrtoint ptr %sym_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sym_name, align 4
  %cmp10.not = icmp eq ptr %17, null
  br i1 %cmp10.not, label %if.end7.land.end_crit_edge, label %land.rhs

if.end7.land.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp12 = icmp ne i8 %19, 0
  %phi.cast = zext i1 %cmp12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end7.land.end_crit_edge
  %20 = phi i32 [ 0, %if.end7.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %21 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mod_name, align 4
  %cmp15 = icmp eq ptr %22, null
  br i1 %cmp15, label %if.then17, label %land.end.do.body20_crit_edge

land.end.do.body20_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.4, ptr %mod_name, align 4
  br label %do.body20

do.body20:                                        ; preds = %if.then17, %land.end.do.body20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %24 = load i32, ptr @kdb_flags, align 4
  %and21 = and i32 %24, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.out_crit_edge, label %if.then23

do.body20.out_crit_edge:                          ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mod_name, align 4
  %call28 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.kdbnearsym, i32 noundef %20, i32 noundef %sub, ptr noundef %26, ptr noundef %17, ptr noundef %17) #9
  br label %out

out:                                              ; preds = %if.then23, %do.body20.out_crit_edge, %do.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.out_crit_edge ], [ %20, %if.then23 ], [ %20, %do.body20.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %symbolsize) #9
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kallsyms_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kallsyms_symbol_complete(ptr nocapture noundef %prefix_name, i32 noundef %max_len) local_unnamed_addr #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #9
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %pos, align 8
  %call = tail call i32 @strlen(ptr noundef %prefix_name) #12
  %call142 = call ptr @kdb_walk_kallsyms(ptr noundef nonnull %pos) #9
  %tobool.not43 = icmp eq ptr %call142, null
  br i1 %tobool.not43, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sub = add i32 %max_len, -1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call146 = phi ptr [ %call142, %while.body.lr.ph ], [ %call1, %while.cond.backedge.while.body_crit_edge ]
  %number.045 = phi i32 [ 0, %while.body.lr.ph ], [ %number.0.be, %while.cond.backedge.while.body_crit_edge ]
  %prev_len.044 = phi i32 [ 0, %while.body.lr.ph ], [ %prev_len.0.be, %while.cond.backedge.while.body_crit_edge ]
  %call2 = call i32 @strncmp(ptr noundef nonnull %call146, ptr noundef %prefix_name, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then:                                          ; preds = %while.body
  %call3 = call i32 @strscpy(ptr noundef nonnull @ks_namebuf, ptr noundef nonnull %call146, i32 noundef 129) #9
  %inc = add i32 %number.045, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number.045)
  %cmp4 = icmp eq i32 %number.045, 0
  br i1 %cmp4, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_len.044)
  %cmp840 = icmp sgt i32 %prev_len.044, 0
  br i1 %cmp840, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.while.cond.backedge_crit_edge

for.cond.preheader.while.cond.backedge_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 @strlen(ptr noundef nonnull @ks_namebuf) #12
  %1 = call i32 @llvm.smin.i32(i32 %sub, i32 %call6)
  %2 = call ptr @memcpy(ptr @ks_namebuf_prev, ptr @ks_namebuf, i32 %1)
  %arrayidx = getelementptr [129 x i8], ptr @ks_namebuf_prev, i32 0, i32 %1
  br label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %for.body.while.cond.backedge.sink.split_crit_edge, %if.then5
  %arrayidx10.lcssa.sink = phi ptr [ %arrayidx, %if.then5 ], [ %arrayidx10, %for.body.while.cond.backedge.sink.split_crit_edge ]
  %prev_len.0.be.ph = phi i32 [ %1, %if.then5 ], [ %i.041, %for.body.while.cond.backedge.sink.split_crit_edge ]
  %number.0.be.ph = phi i32 [ 1, %if.then5 ], [ %inc, %for.body.while.cond.backedge.sink.split_crit_edge ]
  %3 = ptrtoint ptr %arrayidx10.lcssa.sink to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx10.lcssa.sink, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.inc.while.cond.backedge_crit_edge, %while.cond.backedge.sink.split, %for.cond.preheader.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %prev_len.0.be = phi i32 [ %prev_len.044, %while.body.while.cond.backedge_crit_edge ], [ %prev_len.044, %for.cond.preheader.while.cond.backedge_crit_edge ], [ %prev_len.0.be.ph, %while.cond.backedge.sink.split ], [ %prev_len.044, %for.inc.while.cond.backedge_crit_edge ]
  %number.0.be = phi i32 [ %number.045, %while.body.while.cond.backedge_crit_edge ], [ %inc, %for.cond.preheader.while.cond.backedge_crit_edge ], [ %number.0.be.ph, %while.cond.backedge.sink.split ], [ %inc, %for.inc.while.cond.backedge_crit_edge ]
  %call1 = call ptr @kdb_walk_kallsyms(ptr noundef nonnull %pos) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc17, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx9 = getelementptr [129 x i8], ptr @ks_namebuf, i32 0, i32 %i.041
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr [129 x i8], ptr @ks_namebuf_prev, i32 0, i32 %i.041
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp12.not = icmp eq i8 %5, %7
  br i1 %cmp12.not, label %for.inc, label %for.body.while.cond.backedge.sink.split_crit_edge

for.body.while.cond.backedge.sink.split_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.sink.split

for.inc:                                          ; preds = %for.body
  %inc17 = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc17, %prev_len.044
  br i1 %exitcond.not, label %for.inc.while.cond.backedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.while.cond.backedge_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %prev_len.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %prev_len.0.be, %while.cond.backedge.while.end_crit_edge ]
  %number.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %number.0.be, %while.cond.backedge.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_len.0.lcssa, i32 %call)
  %cmp19 = icmp sgt i32 %prev_len.0.lcssa, %call
  br i1 %cmp19, label %if.then21, label %while.end.if.end22_crit_edge

while.end.if.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %prev_len.0.lcssa, 1
  %8 = call ptr @memcpy(ptr %prefix_name, ptr @ks_namebuf_prev, i32 %add)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %while.end.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #9
  ret i32 %number.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kdb_walk_kallsyms(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kallsyms_symbol_next(ptr noundef %prefix_name, i32 noundef %flag, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %prefix_name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %tobool.not = icmp eq i32 %flag, 0
  br i1 %tobool.not, label %if.then, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i64 0, ptr @kallsyms_symbol_next.pos, align 8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %entry.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %call1 = tail call ptr @kdb_walk_kallsyms(ptr noundef nonnull @kallsyms_symbol_next.pos) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %call1, ptr noundef %prefix_name, i32 noundef %call)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @strscpy(ptr noundef %prefix_name, ptr noundef nonnull %call1, i32 noundef %buf_size) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_symbol_print(i32 noundef %addr, ptr noundef readonly %symtab_p, i32 noundef %punc) local_unnamed_addr #0 align 64 {
entry:
  %symtab = alloca %struct.__ksymtab, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %symtab) #9
  %0 = call ptr @memset(ptr %symtab, i32 255, i32 40)
  %tobool.not = icmp eq ptr %symtab_p, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 @kdbnearsym(i32 noundef %addr, ptr noundef nonnull %symtab)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %symtab_p2.0 = phi ptr [ %symtab, %if.else ], [ %symtab_p, %entry.if.end_crit_edge ]
  %sym_name = getelementptr inbounds %struct.__ksymtab, ptr %symtab_p2.0, i32 0, i32 7
  %1 = ptrtoint ptr %sym_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sym_name, align 4
  %tobool1.not = icmp eq ptr %2, null
  %and = and i32 %punc, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool2.not, %tobool1.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %punc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.6) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  br i1 %tobool2.not, label %if.end14, label %if.end14.thread

if.end14:                                         ; preds = %if.end9
  %3 = ptrtoint ptr %sym_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sym_name, align 4
  %tobool16.not = icmp eq ptr %4, null
  br i1 %tobool16.not, label %if.end14.if.end52_crit_edge, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end14.if.end52_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end14.thread:                                  ; preds = %if.end9
  %call13 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.7, i32 noundef %addr) #9
  %5 = ptrtoint ptr %sym_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sym_name, align 4
  %tobool16.not85 = icmp eq ptr %6, null
  br i1 %tobool16.not85, label %if.end14.thread.if.end52_crit_edge, label %if.then20

if.end14.thread.if.end52_crit_edge:               ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then20:                                        ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.6) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end14.if.end22_crit_edge
  %and23 = and i32 %punc, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %mod_name = getelementptr inbounds %struct.__ksymtab, ptr %symtab_p2.0, i32 0, i32 1
  %7 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mod_name, align 4
  %call28 = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.then30

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef %8) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge
  %9 = ptrtoint ptr %sym_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sym_name, align 4
  %call35 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.10, ptr noundef %10) #9
  %sym_start = getelementptr inbounds %struct.__ksymtab, ptr %symtab_p2.0, i32 0, i32 8
  %11 = ptrtoint ptr %sym_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sym_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %addr)
  %cmp.not = icmp eq i32 %12, %addr
  br i1 %cmp.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %addr, %12
  %call38 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.11, i32 noundef %sub) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %and40 = and i32 %punc, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end46_crit_edge, label %if.then42

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %sym_end = getelementptr inbounds %struct.__ksymtab, ptr %symtab_p2.0, i32 0, i32 9
  %13 = ptrtoint ptr %sym_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sym_end, align 4
  %15 = ptrtoint ptr %sym_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sym_start, align 4
  %sub44 = sub i32 %14, %16
  %call45 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.12, i32 noundef %sub44) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39.if.end46_crit_edge
  br i1 %tobool24.not, label %if.end46.if.end52_crit_edge, label %if.then49

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end46.if.end52_crit_edge, %if.end14.thread.if.end52_crit_edge, %if.end14.if.end52_crit_edge
  %and53 = and i32 %punc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.then55

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.6) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52.if.end57_crit_edge
  %and58 = and i32 %punc, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %if.then60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end57.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %symtab) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kdb_strdup(ptr nocapture noundef readonly %str, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %str) #12
  %add = add i32 %call, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %type) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call ptr @strcpy(ptr noundef nonnull %call9.i, ptr noundef %str) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_getarea_size(ptr noundef %res, i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %addr to ptr
  %call = tail call i32 @copy_from_kernel_nofault(ptr noundef %res, ptr noundef %0, i32 noundef %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %1 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_getarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %2 = load i32, ptr @kdb_state, align 4
  %or = or i32 %2, 512
  br label %if.end5.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and4 = and i32 %1, -513
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.else, %if.then2
  %or.sink = phi i32 [ %or, %if.then2 ], [ %and4, %if.else ]
  %ret.0.ph = phi i32 [ -21, %if.then2 ], [ 0, %if.else ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %or.sink, ptr @kdb_state, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.then.if.end5_crit_edge
  %ret.0 = phi i32 [ -21, %if.then.if.end5_crit_edge ], [ %ret.0.ph, %if.end5.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_putarea_size(i32 noundef %addr, ptr noundef %res, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %addr to ptr
  %call = tail call i32 @copy_from_kernel_nofault(ptr noundef %0, ptr noundef %res, i32 noundef %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %1 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_putarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %2 = load i32, ptr @kdb_state, align 4
  %or = or i32 %2, 512
  br label %if.end5.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and4 = and i32 %1, -513
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.else, %if.then2
  %or.sink = phi i32 [ %or, %if.then2 ], [ %and4, %if.else ]
  %ret.0.ph = phi i32 [ -21, %if.then2 ], [ 0, %if.else ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %or.sink, ptr @kdb_state, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.then.if.end5_crit_edge
  %ret.0 = phi i32 [ -21, %if.then.if.end5_crit_edge ], [ %ret.0.ph, %if.end5.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_getphysword(ptr nocapture noundef writeonly %word, i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %w1 = alloca i8, align 1
  %w2 = alloca i16, align 2
  %w4 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %w1) #9
  %0 = ptrtoint ptr %w1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %w1, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w2) #9
  %1 = ptrtoint ptr %w2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %w2, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w4) #9
  %2 = ptrtoint ptr %w4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %w4, align 4, !annotation !74
  %3 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %word, align 4
  %4 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @kdb_getphys(ptr noundef nonnull %w1, i32 noundef %addr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %w1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %w1, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %word, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i32 @kdb_getphys(ptr noundef nonnull %w2, i32 noundef %addr, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %w2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %w2, align 2
  %conv5 = zext i16 %9 to i32
  %10 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %word, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = call fastcc i32 @kdb_getphys(ptr noundef nonnull %w4, i32 noundef %addr, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %w4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %w4, align 4
  %13 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %word, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.kdb_getphysword, i32 noundef %size) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then10, %sw.bb7.sw.epilog_crit_edge, %if.then4, %sw.bb1.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge
  %diag.0 = phi i32 [ -3, %sw.default ], [ 1, %sw.bb7.sw.epilog_crit_edge ], [ 0, %if.then10 ], [ 1, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.then4 ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %w1) #9
  ret i32 %diag.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kdb_getphys(ptr nocapture noundef writeonly %res, i32 noundef %addr, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %addr, 12
  %call = tail call i32 @pfn_valid(i32 noundef %shr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %1
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %3 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  %7 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i1.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #9
  %and = and i32 %addr, 4095
  %add.ptr2 = getelementptr i8, ptr %call.i.i, i32 %and
  %13 = call ptr @memcpy(ptr %res, ptr %add.ptr2, i32 %size)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %14 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i1.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 213
  %18 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %19, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %20 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_getword(ptr nocapture noundef writeonly %word, i32 noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %w1 = alloca i8, align 1
  %w2 = alloca i16, align 2
  %w4 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %w1) #9
  %0 = ptrtoint ptr %w1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %w1, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w2) #9
  %1 = ptrtoint ptr %w2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %w2, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w4) #9
  %2 = ptrtoint ptr %w4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %w4, align 4, !annotation !74
  %3 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %word, align 4
  %4 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %size, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %5 = inttoptr i32 %addr to ptr
  %call.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %w1, ptr noundef %5, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %6 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not.i, label %if.then, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %and.i = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %kdb_getarea_size.exit, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

kdb_getarea_size.exit:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_getarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %7 = load i32, ptr @kdb_state, align 4
  %or.i = or i32 %7, 512
  store i32 %or.i, ptr @kdb_state, align 4
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i = and i32 %6, -513
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %and4.i, ptr @kdb_state, align 4
  %8 = ptrtoint ptr %w1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %w1, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %word, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %11 = inttoptr i32 %addr to ptr
  %call.i35 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %w2, ptr noundef %11, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %12 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not.i36, label %if.then4, label %if.then.i39

if.then.i39:                                      ; preds = %sw.bb1
  %and.i37 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool1.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool1.not.i38, label %kdb_getarea_size.exit49, label %if.then.i39.sw.epilog_crit_edge

if.then.i39.sw.epilog_crit_edge:                  ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

kdb_getarea_size.exit49:                          ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i40 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_getarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %13 = load i32, ptr @kdb_state, align 4
  %or.i41 = or i32 %13, 512
  store i32 %or.i41, ptr @kdb_state, align 4
  br label %sw.epilog

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i43 = and i32 %12, -513
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %and4.i43, ptr @kdb_state, align 4
  %14 = ptrtoint ptr %w2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %w2, align 2
  %conv5 = zext i16 %15 to i32
  %16 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv5, ptr %word, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %17 = inttoptr i32 %addr to ptr
  %call.i50 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %w4, ptr noundef %17, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %18 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not.i51, label %if.then10, label %if.then.i54

if.then.i54:                                      ; preds = %sw.bb7
  %and.i52 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool1.not.i53 = icmp eq i32 %and.i52, 0
  br i1 %tobool1.not.i53, label %kdb_getarea_size.exit64, label %if.then.i54.sw.epilog_crit_edge

if.then.i54.sw.epilog_crit_edge:                  ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

kdb_getarea_size.exit64:                          ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i55 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_getarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %19 = load i32, ptr @kdb_state, align 4
  %or.i56 = or i32 %19, 512
  store i32 %or.i56, ptr @kdb_state, align 4
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i58 = and i32 %18, -513
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %and4.i58, ptr @kdb_state, align 4
  %20 = ptrtoint ptr %w4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %w4, align 4
  %22 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %word, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.kdb_getword, i32 noundef %size) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then10, %kdb_getarea_size.exit64, %if.then.i54.sw.epilog_crit_edge, %if.then4, %kdb_getarea_size.exit49, %if.then.i39.sw.epilog_crit_edge, %if.then, %kdb_getarea_size.exit, %if.then.i.sw.epilog_crit_edge
  %diag.0 = phi i32 [ -3, %sw.default ], [ -21, %kdb_getarea_size.exit64 ], [ 0, %if.then10 ], [ -21, %kdb_getarea_size.exit49 ], [ 0, %if.then4 ], [ -21, %kdb_getarea_size.exit ], [ 0, %if.then ], [ -21, %if.then.i.sw.epilog_crit_edge ], [ -21, %if.then.i39.sw.epilog_crit_edge ], [ -21, %if.then.i54.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %w1) #9
  ret i32 %diag.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_putword(i32 noundef %addr, i32 noundef %word, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %w1 = alloca i8, align 1
  %w2 = alloca i16, align 2
  %w4 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %w1) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w4) #9
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %size, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %conv = trunc i32 %word to i8
  %1 = ptrtoint ptr %w1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %w1, align 1
  %2 = inttoptr i32 %addr to ptr
  %call.i = call i32 @copy_from_kernel_nofault(ptr noundef %2, ptr noundef nonnull %w1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %3 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_putarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %4 = load i32, ptr @kdb_state, align 4
  %or.i = or i32 %4, 512
  br label %if.end5.sink.split.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i = and i32 %3, -513
  br label %if.end5.sink.split.i

if.end5.sink.split.i:                             ; preds = %if.else.i, %if.then2.i
  %or.sink.i = phi i32 [ %or.i, %if.then2.i ], [ %and4.i, %if.else.i ]
  %ret.0.ph.i = phi i32 [ -21, %if.then2.i ], [ 0, %if.else.i ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %or.sink.i, ptr @kdb_state, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %conv2 = trunc i32 %word to i16
  %5 = ptrtoint ptr %w2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv2, ptr %w2, align 2
  %6 = inttoptr i32 %addr to ptr
  %call.i19 = call i32 @copy_from_kernel_nofault(ptr noundef %6, ptr noundef nonnull %w2, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %7 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not.i20, label %if.else.i28, label %if.then.i23

if.then.i23:                                      ; preds = %sw.bb1
  %and.i21 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool1.not.i22 = icmp eq i32 %and.i21, 0
  br i1 %tobool1.not.i22, label %if.then2.i26, label %if.then.i23.sw.epilog_crit_edge

if.then.i23.sw.epilog_crit_edge:                  ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then2.i26:                                     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i24 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_putarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %8 = load i32, ptr @kdb_state, align 4
  %or.i25 = or i32 %8, 512
  br label %if.end5.sink.split.i31

if.else.i28:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i27 = and i32 %7, -513
  br label %if.end5.sink.split.i31

if.end5.sink.split.i31:                           ; preds = %if.else.i28, %if.then2.i26
  %or.sink.i29 = phi i32 [ %or.i25, %if.then2.i26 ], [ %and4.i27, %if.else.i28 ]
  %ret.0.ph.i30 = phi i32 [ -21, %if.then2.i26 ], [ 0, %if.else.i28 ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %or.sink.i29, ptr @kdb_state, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %9 = ptrtoint ptr %w4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %word, ptr %w4, align 4
  %10 = inttoptr i32 %addr to ptr
  %call.i34 = call i32 @copy_from_kernel_nofault(ptr noundef %10, ptr noundef nonnull %w4, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %11 = load i32, ptr @kdb_state, align 4
  br i1 %tobool.not.i35, label %if.else.i43, label %if.then.i38

if.then.i38:                                      ; preds = %sw.bb4
  %and.i36 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool1.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool1.not.i37, label %if.then2.i41, label %if.then.i38.sw.epilog_crit_edge

if.then.i38.sw.epilog_crit_edge:                  ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then2.i41:                                     ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i39 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.kdb_putarea_size, i32 noundef %addr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %12 = load i32, ptr @kdb_state, align 4
  %or.i40 = or i32 %12, 512
  br label %if.end5.sink.split.i46

if.else.i43:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i42 = and i32 %11, -513
  br label %if.end5.sink.split.i46

if.end5.sink.split.i46:                           ; preds = %if.else.i43, %if.then2.i41
  %or.sink.i44 = phi i32 [ %or.i40, %if.then2.i41 ], [ %and4.i42, %if.else.i43 ]
  %ret.0.ph.i45 = phi i32 [ -21, %if.then2.i41 ], [ 0, %if.else.i43 ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  store i32 %or.sink.i44, ptr @kdb_state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.kdb_putword, i32 noundef %size) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end5.sink.split.i46, %if.then.i38.sw.epilog_crit_edge, %if.end5.sink.split.i31, %if.then.i23.sw.epilog_crit_edge, %if.end5.sink.split.i, %if.then.i.sw.epilog_crit_edge
  %diag.0 = phi i32 [ -3, %sw.default ], [ -21, %if.then.i.sw.epilog_crit_edge ], [ %ret.0.ph.i, %if.end5.sink.split.i ], [ -21, %if.then.i23.sw.epilog_crit_edge ], [ %ret.0.ph.i30, %if.end5.sink.split.i31 ], [ -21, %if.then.i38.sw.epilog_crit_edge ], [ %ret.0.ph.i45, %if.end5.sink.split.i46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %w1) #9
  ret i32 %diag.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @kdb_task_state_char(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !74
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %tmp, ptr noundef nonnull %p, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %p, align 128
  %exit_state.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 57
  %3 = ptrtoint ptr %exit_state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %exit_state.i.i, align 4
  %or.i.i = or i32 %4, %2
  %and.i.i = and i32 %or.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 1026
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 128, i32 %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %tobool.not.i.i.i = icmp eq i32 %spec.store.select.i.i, 0
  %5 = call i32 @llvm.ctlz.i32(i32 %spec.store.select.i.i, i1 true) #9, !range !79
  %sub.i.i.i = sub nuw nsw i32 32, %5
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %arrayidx.i.i = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %cond.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cpu.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %14) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call4.i.i.i)
  %cmp.i = icmp ugt i32 %13, %call4.i.i.i
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %13
  %call6 = call i32 @task_curr(ptr noundef nonnull %p) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.then9_crit_edge, label %lor.lhs.false8

if.then4.if.then9_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false8:                                   ; preds = %if.then4
  %irq_depth = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %spec.select.i, i32 4
  %15 = ptrtoint ptr %irq_depth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %lor.lhs.false8.if.then9_crit_edge, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false8.if.then9_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false8.if.then9_crit_edge, %if.then4.if.then9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_initial_cpu to i32))
  %17 = load i32, ptr @kdb_initial_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %17)
  %cmp10.not = icmp eq i32 %spec.select.i, %17
  %spec.select = select i1 %cmp10.not, i8 %7, i8 45
  br label %cleanup

if.else:                                          ; preds = %if.end
  %mm = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 53
  %18 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm, align 8
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %land.lhs.true, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %conv = zext i8 %7 to i32
  %memchr = call ptr @memchr(ptr noundef nonnull @.str.17, i32 %conv, i32 4) #12
  %tobool16.not = icmp eq ptr %memchr, null
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %if.then17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not.i = icmp eq i8 %22, 0
  %sub.i = add i8 %7, 32
  %spec.select.i33 = select i1 %cmp.not.i, i8 %7, i8 %sub.i
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 69, %lor.lhs.false.cleanup_crit_edge ], [ 69, %entry.cleanup_crit_edge ], [ %7, %lor.lhs.false8.cleanup_crit_edge ], [ %7, %if.else.cleanup_crit_edge ], [ %spec.select.i33, %if.then17 ], [ %7, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_curr(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kdb_task_state(ptr noundef %p, ptr noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @kdb_task_state_char(ptr noundef %p)
  %tobool.not = icmp eq ptr %mask, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv2 = zext i8 %call to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.18, i32 %conv2, i32 5) #12
  %tobool4.not = icmp eq ptr %memchr, null
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call ptr @strchr(ptr noundef nonnull %mask, i32 noundef 65)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv9 = zext i8 %call to i32
  %call10 = tail call ptr @strchr(ptr noundef nonnull %mask, i32 noundef %conv9)
  %tobool11 = icmp ne ptr %call10, null
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %tobool4.not, %if.then ], [ %tobool11, %if.end8 ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_save_flags() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kdb_flags_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %do.body2, label %do.end5, !prof !80

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/debug/kdb/kdb_support.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 549, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %1 = load i32, ptr @kdb_flags, align 4
  %inc = add nuw nsw i32 %0, 1
  store i32 %inc, ptr @kdb_flags_index, align 4
  %arrayidx = getelementptr [4 x i32], ptr @kdb_flags_stack, i32 0, i32 %0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_restore_flags() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kdb_flags_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !80

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/debug/kdb/kdb_support.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr @kdb_flags_index, align 4
  %arrayidx = getelementptr [4 x i32], ptr @kdb_flags_stack, i32 0, i32 %dec
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  store i32 %2, ptr @kdb_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/debug/kdb/kdb_support.c", i32 42, i32 2}
!2 = !{ptr @__func__.kdbgetsymval, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../kernel/debug/kdb/kdb_support.c", i32 46, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../kernel/debug/kdb/kdb_support.c", i32 50, i32 2}
!7 = !{ptr @__ksymtab_kdbgetsymval, !8, !"__ksymtab_kdbgetsymval", i1 false, i1 false}
!8 = !{!"../kernel/debug/kdb/kdb_support.c", i32 53, i32 1}
!9 = !{ptr @kdbnearsym.namebuf, !10, !"namebuf", i1 false, i1 false}
!10 = !{!"../kernel/debug/kdb/kdb_support.c", i32 87, i32 14}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/debug/kdb/kdb_support.c", i32 89, i32 2}
!13 = !{ptr @__func__.kdbnearsym, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/debug/kdb/kdb_support.c", i32 106, i32 22}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/debug/kdb/kdb_support.c", i32 107, i32 2}
!18 = !{ptr @kallsyms_symbol_next.pos, !19, !"pos", i1 false, i1 false}
!19 = !{!"../kernel/debug/kdb/kdb_support.c", i32 174, i32 16}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/debug/kdb/kdb_support.c", i32 212, i32 14}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/debug/kdb/kdb_support.c", i32 214, i32 14}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/debug/kdb/kdb_support.c", i32 219, i32 15}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/debug/kdb/kdb_support.c", i32 221, i32 15}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/debug/kdb/kdb_support.c", i32 222, i32 14}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/debug/kdb/kdb_support.c", i32 224, i32 15}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/debug/kdb/kdb_support.c", i32 226, i32 15}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/debug/kdb/kdb_support.c", i32 229, i32 15}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/debug/kdb/kdb_support.c", i32 234, i32 14}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/debug/kdb/kdb_support.c", i32 272, i32 4}
!40 = !{ptr @__func__.kdb_getarea_size, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__func__.kdb_putarea_size, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/debug/kdb/kdb_support.c", i32 297, i32 4}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/debug/kdb/kdb_support.c", i32 379, i32 3}
!45 = !{ptr @__func__.kdb_getphysword, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__func__.kdb_getword, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/debug/kdb/kdb_support.c", i32 428, i32 3}
!48 = !{ptr @__func__.kdb_putword, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/debug/kdb/kdb_support.c", i32 472, i32 3}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/debug/kdb/kdb_support.c", i32 506, i32 30}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/debug/kdb/kdb_support.c", i32 532, i32 18}
!54 = !{ptr @ks_namebuf, !55, !"ks_namebuf", i1 false, i1 false}
!55 = !{!"../kernel/debug/kdb/kdb_support.c", i32 113, i32 13}
!56 = !{ptr @ks_namebuf_prev, !57, !"ks_namebuf_prev", i1 false, i1 false}
!57 = !{!"../kernel/debug/kdb/kdb_support.c", i32 113, i32 42}
!58 = !{ptr @kdb_flags_stack, !59, !"kdb_flags_stack", i1 false, i1 false}
!59 = !{!"../kernel/debug/kdb/kdb_support.c", i32 545, i32 12}
!60 = !{ptr @kdb_flags_index, !61, !"kdb_flags_index", i1 false, i1 false}
!61 = !{!"../kernel/debug/kdb/kdb_support.c", i32 545, i32 32}
!62 = !{ptr @task_index_to_char.state_char, !63, !"state_char", i1 false, i1 false}
!63 = !{!"../include/linux/sched.h", i32 1638, i32 20}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2153830989}
!76 = !{i64 2152740811}
!77 = !{i64 2152741018}
!78 = !{i64 2153833760}
!79 = !{i32 0, i32 33}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2154192469, i64 2154192964, i64 2154192506, i64 2154192562, i64 2154192596, i64 2154192620, i64 2154192661, i64 2154192682, i64 2154192710, i64 2154192744}
!82 = !{i64 2154194098, i64 2154194593, i64 2154194135, i64 2154194191, i64 2154194225, i64 2154194249, i64 2154194290, i64 2154194311, i64 2154194339, i64 2154194373}
