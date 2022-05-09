; ModuleID = '/llk/IR_all_yes/net/rds/info.c_pt.bc'
source_filename = "../net/rds/info.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_info_register_func\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_info_register_func\09\09\09\09"
module asm "\09.long\09__crc_rds_info_register_func\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_info_register_func:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_info_register_func\22\09\09\09\09\09"
module asm "__kstrtabns_rds_info_register_func:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_info_deregister_func\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_info_deregister_func\09\09\09\09"
module asm "\09.long\09__crc_rds_info_deregister_func\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_info_deregister_func:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_info_deregister_func\22\09\09\09\09\09"
module asm "__kstrtabns_rds_info_deregister_func:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_info_copy\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_info_copy\09\09\09\09"
module asm "\09.long\09__crc_rds_info_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_info_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_info_copy\22\09\09\09\09\09"
module asm "__kstrtabns_rds_info_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rds_info_iterator = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rds_info_lengths = type { i32, i32 }

@rds_info_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rds_info_funcs = internal global { [18 x ptr], [56 x i8] } zeroinitializer, align 32
@__kstrtab_rds_info_register_func = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_info_register_func = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_info_register_func = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_info_register_func to i32), ptr @__kstrtab_rds_info_register_func, ptr @__kstrtabns_rds_info_register_func }, section "___ksymtab_gpl+rds_info_register_func", align 4
@__kstrtab_rds_info_deregister_func = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_info_deregister_func = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_info_deregister_func = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_info_deregister_func to i32), ptr @__kstrtab_rds_info_deregister_func, ptr @__kstrtabns_rds_info_deregister_func }, section "___ksymtab_gpl+rds_info_deregister_func", align 4
@rds_info_copy.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_info_copy\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/info.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s(): page %p addr %p offset %lu this %lu data %p bytes %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_rds_info_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_info_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_info_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_info_copy to i32), ptr @__kstrtab_rds_info_copy, ptr @__kstrtabns_rds_info_copy }, section "___ksymtab_gpl+rds_info_copy", align 4
@rds_info_getsockopt.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rds_info_getsockopt\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): len %d nr_pages %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_info_lock\00", [18 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"rds_info_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"rds_info_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 71, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 126, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 205, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [18 x i8] c"../net/rds/info.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 70, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_rds_info_copy, ptr @__ksymtab_rds_info_deregister_func, ptr @__ksymtab_rds_info_register_func, ptr @rds_info_lock, ptr @rds_info_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_info_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_info_funcs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_info_register_func(i32 noundef %optname, ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %optname, -10018
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %0)
  %1 = icmp ult i32 %0, -18
  br i1 %1, label %do.body3, label %do.end8, !prof !31

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/info.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.end8:                                          ; preds = %entry
  %sub = add nsw i32 %optname, -10000
  tail call void @_raw_spin_lock(ptr noundef nonnull @rds_info_lock) #6
  %arrayidx = getelementptr [18 x ptr], ptr @rds_info_funcs, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.end26, label %do.body18, !prof !33

do.body18:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/info.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #6, !srcloc !34
  unreachable

do.end26:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rds_info_lock) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_info_deregister_func(i32 noundef %optname, ptr noundef readnone %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %optname, -10018
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %0)
  %1 = icmp ult i32 %0, -18
  br i1 %1, label %do.body3, label %do.end8, !prof !31

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/info.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #6, !srcloc !35
  unreachable

do.end8:                                          ; preds = %entry
  %sub = add nsw i32 %optname, -10000
  tail call void @_raw_spin_lock(ptr noundef nonnull @rds_info_lock) #6
  %arrayidx = getelementptr [18 x ptr], ptr @rds_info_funcs, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp10.not = icmp eq ptr %3, %func
  br i1 %cmp10.not, label %do.end26, label %do.body18, !prof !33

do.body18:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/info.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

do.end26:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rds_info_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_info_iter_unmap(ptr nocapture noundef %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.rds_info_iterator, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kunmap_local_indexed(ptr noundef nonnull %1) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %2 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i1.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 213
  %6 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %7, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %8 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %addr, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_info_copy(ptr nocapture noundef %iter, ptr noundef %data, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not58 = icmp eq i32 %bytes, 0
  br i1 %tobool.not58, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %addr = getelementptr inbounds %struct.rds_info_iterator, ptr %iter, i32 0, i32 1
  %offset = getelementptr inbounds %struct.rds_info_iterator, ptr %iter, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %data.addr.061 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr15, %if.end31.while.body_crit_edge ]
  %bytes.addr.059 = phi i32 [ %bytes, %while.body.lr.ph ], [ %sub16, %if.end31.while.body_crit_edge ]
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  %11 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !40
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %5, i32 noundef %or.i) #6
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %sub = sub i32 4096, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.059, i32 %sub)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_info_copy.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_info_copy, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !41

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iter, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr, align 4
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_info_copy.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef %20, ptr noundef %data.addr.061, i32 noundef %bytes.addr.059) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr, align 4
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %32
  %33 = call ptr @memcpy(ptr %add.ptr, ptr %data.addr.061, i32 %20)
  %add.ptr15 = getelementptr i8, ptr %data.addr.061, i32 %20
  %sub16 = sub i32 %bytes.addr.059, %20
  %34 = load i32, ptr %offset, align 4
  %add = add i32 %34, %20
  store i32 %add, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp19 = icmp eq i32 %add, 4096
  br i1 %cmp19, label %do.end24, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr, align 4
  tail call void @kunmap_local_indexed(ptr noundef %36) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %37 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i1.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %42, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %43 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %addr, align 4
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %offset, align 4
  %49 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iter, align 4
  %incdec.ptr = getelementptr ptr, ptr %50, i32 1
  store ptr %incdec.ptr, ptr %iter, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.end24, %do.end.if.end31_crit_edge
  %tobool.not = icmp eq i32 %sub16, 0
  br i1 %tobool.not, label %if.end31.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_info_getsockopt(ptr noundef %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.rds_info_iterator, align 4
  %lens = alloca %struct.rds_info_lengths, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iter) #6
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !42
  %1 = getelementptr inbounds %struct.rds_info_iterator, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !42
  %3 = getelementptr inbounds %struct.rds_info_iterator, ptr %iter, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lens) #6
  %5 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lens, align 4, !annotation !42
  %6 = getelementptr inbounds %struct.rds_info_lengths, ptr %lens, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !42
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 171) #6
  %8 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !43
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #6, !srcloc !46
  %asmresult = extractvalue { i32, i32 } %11, 0
  %asmresult1 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end79_crit_edge

entry.if.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %optval to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %asmresult1)
  %cmp3 = icmp ugt i32 %asmresult1, 2147479552
  br i1 %cmp3, label %if.end.if.end79_crit_edge, label %lor.lhs.false4

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

lor.lhs.false4:                                   ; preds = %if.end
  %add = add i32 %asmresult1, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp5 = icmp ult i32 %add, %12
  br i1 %cmp5, label %lor.lhs.false4.if.end79_crit_edge, label %if.end7

lor.lhs.false4.if.end79_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end7:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1)
  %cmp8 = icmp eq i32 %asmresult1, 0
  br i1 %cmp8, label %if.end7.call_func_crit_edge, label %if.end10

if.end7.call_func_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %call_func

if.end10:                                         ; preds = %if.end7
  %add12 = add i32 %add, 4095
  %and = and i32 %add12, -4096
  %and13 = and i32 %12, -4096
  %sub = sub i32 %and, %and13
  %shr = lshr exact i32 %sub, 12
  %13 = lshr exact i32 %sub, 10
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #9
  %tobool15.not = icmp eq ptr %call8.i, null
  br i1 %tobool15.not, label %if.end10.if.end79_crit_edge, label %if.end17

if.end10.if.end79_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end17:                                         ; preds = %if.end10
  %call18 = tail call i32 @pin_user_pages_fast(i32 noundef %12, i32 noundef %shr, i32 noundef 1, ptr noundef nonnull %call8.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %shr)
  %cmp19.not = icmp eq i32 %call18, %shr
  br i1 %cmp19.not, label %do.body, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.smax.i32(i32 %call18, i32 0)
  br label %out

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_info_getsockopt.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_info_getsockopt, %if.then30)) #6
          to label %call_func [label %if.then30], !srcloc !41

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_info_getsockopt.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %asmresult1, i32 noundef %shr) #6
  br label %call_func

call_func:                                        ; preds = %if.then30, %do.body, %if.end7.call_func_crit_edge
  %pages.0 = phi ptr [ null, %if.end7.call_func_crit_edge ], [ %call8.i, %if.then30 ], [ %call8.i, %do.body ]
  %nr_pages.1 = phi i32 [ 0, %if.end7.call_func_crit_edge ], [ %shr, %if.then30 ], [ %shr, %do.body ]
  %sub32 = add i32 %optname, -10000
  %arrayidx = getelementptr [18 x ptr], ptr @rds_info_funcs, i32 0, i32 %sub32
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool33.not = icmp eq ptr %16, null
  br i1 %tobool33.not, label %call_func.out_crit_edge, label %if.end35

call_func.out_crit_edge:                          ; preds = %call_func
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end35:                                         ; preds = %call_func
  %17 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pages.0, ptr %iter, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %1, align 4
  %and37 = and i32 %12, 4095
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and37, ptr %3, align 4
  call void %16(ptr noundef %sock, i32 noundef %asmresult1, ptr noundef nonnull %iter, ptr noundef nonnull %lens) #6
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp39 = icmp eq i32 %21, 0
  br i1 %cmp39, label %do.body47, label %do.end55, !prof !31

do.body47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/info.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #6, !srcloc !47
  unreachable

do.end55:                                         ; preds = %if.end35
  %22 = ptrtoint ptr %lens to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lens, align 4
  %mul = mul i32 %23, %21
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.end55.rds_info_iter_unmap.exit_crit_edge, label %do.end.i

do.end55.rds_info_iter_unmap.exit_crit_edge:      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %rds_info_iter_unmap.exit

do.end.i:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void @kunmap_local_indexed(ptr noundef nonnull %25) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %26 = call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i1.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %31, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %32 = call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %1, align 4
  br label %rds_info_iter_unmap.exit

rds_info_iter_unmap.exit:                         ; preds = %do.end.i, %do.end55.rds_info_iter_unmap.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %asmresult1)
  %cmp57 = icmp sgt i32 %mul, %asmresult1
  br i1 %cmp57, label %rds_info_iter_unmap.exit.if.end61_crit_edge, label %if.else59

rds_info_iter_unmap.exit.if.end61_crit_edge:      ; preds = %rds_info_iter_unmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.else59:                                        ; preds = %rds_info_iter_unmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %6, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %rds_info_iter_unmap.exit.if.end61_crit_edge
  %ret.0 = phi i32 [ %38, %if.else59 ], [ -28, %rds_info_iter_unmap.exit.if.end61_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 233) #6
  %39 = call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i111 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i111 to ptr
  %cpu_domain.i.i112 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i112) #3, !srcloc !43
  %and.i113 = and i32 %41, -13
  %or.i114 = or i32 %and.i113, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i114) #6, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %mul, i32 -1226833921) #6, !srcloc !48
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #6, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool74.not = icmp eq i32 %42, 0
  %spec.select = select i1 %tobool74.not, i32 %ret.0, i32 -14
  br label %out

out:                                              ; preds = %if.end61, %call_func.out_crit_edge, %if.then20
  %ret.1 = phi i32 [ -11, %if.then20 ], [ -92, %call_func.out_crit_edge ], [ %spec.select, %if.end61 ]
  %pages.1 = phi ptr [ %call8.i, %if.then20 ], [ %pages.0, %call_func.out_crit_edge ], [ %pages.0, %if.end61 ]
  %nr_pages.2 = phi i32 [ %14, %if.then20 ], [ %nr_pages.1, %call_func.out_crit_edge ], [ %nr_pages.1, %if.end61 ]
  %tobool77.not = icmp eq ptr %pages.1, null
  br i1 %tobool77.not, label %out.if.end79_crit_edge, label %if.then78

out.if.end79_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then78:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @unpin_user_pages(ptr noundef nonnull %pages.1, i32 noundef %nr_pages.2) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %out.if.end79_crit_edge, %if.end10.if.end79_crit_edge, %lor.lhs.false4.if.end79_crit_edge, %if.end.if.end79_crit_edge, %entry.if.end79_crit_edge
  %pages.1129 = phi ptr [ %pages.1, %if.then78 ], [ null, %out.if.end79_crit_edge ], [ null, %entry.if.end79_crit_edge ], [ null, %lor.lhs.false4.if.end79_crit_edge ], [ null, %if.end.if.end79_crit_edge ], [ null, %if.end10.if.end79_crit_edge ]
  %ret.1128 = phi i32 [ %ret.1, %if.then78 ], [ %ret.1, %out.if.end79_crit_edge ], [ -14, %entry.if.end79_crit_edge ], [ -22, %lor.lhs.false4.if.end79_crit_edge ], [ -22, %if.end.if.end79_crit_edge ], [ -12, %if.end10.if.end79_crit_edge ]
  call void @kfree(ptr noundef %pages.1129) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lens) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iter) #6
  ret i32 %ret.1128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_rds_info_register_func, !1, !"__ksymtab_rds_info_register_func", i1 false, i1 false}
!1 = !{!"../net/rds/info.c", i32 84, i32 1}
!2 = !{ptr @__ksymtab_rds_info_deregister_func, !3, !"__ksymtab_rds_info_deregister_func", i1 false, i1 false}
!3 = !{!"../net/rds/info.c", i32 97, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rds/info.c", i32 126, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_info_copy.__UNIQUE_ID_ddebug547, !5, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!10 = !{ptr @__ksymtab_rds_info_copy, !11, !"__ksymtab_rds_info_copy", i1 false, i1 false}
!11 = !{!"../net/rds/info.c", i32 144, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/info.c", i32 205, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rds_info_getsockopt.__UNIQUE_ID_ddebug549, !13, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!16 = !{ptr @rds_info_funcs, !17, !"rds_info_funcs", i1 false, i1 false}
!17 = !{!"../net/rds/info.c", i32 71, i32 22}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rds/info.c", i32 70, i32 8}
!20 = !{ptr @rds_info_lock, !19, !"rds_info_lock", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2158196186, i64 2158196664, i64 2158196223, i64 2158196279, i64 2158196313, i64 2158196337, i64 2158196378, i64 2158196399, i64 2158196427, i64 2158196461}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2158197768, i64 2158198246, i64 2158197805, i64 2158197861, i64 2158197895, i64 2158197919, i64 2158197960, i64 2158197981, i64 2158198009, i64 2158198043}
!35 = !{i64 2158201012, i64 2158201490, i64 2158201049, i64 2158201105, i64 2158201139, i64 2158201163, i64 2158201204, i64 2158201225, i64 2158201253, i64 2158201287}
!36 = !{i64 2158202610, i64 2158203088, i64 2158202647, i64 2158202703, i64 2158202737, i64 2158202761, i64 2158202802, i64 2158202823, i64 2158202851, i64 2158202885}
!37 = !{i64 2152190367}
!38 = !{i64 2154418960}
!39 = !{i64 2154416189}
!40 = !{i64 2152190160}
!41 = !{i64 2148159109, i64 2148159114, i64 2148159127, i64 2148159171, i64 2148159205, i64 2148159226}
!42 = !{!"auto-init"}
!43 = !{i64 4682898}
!44 = !{i64 4683095}
!45 = !{i64 2152168328}
!46 = !{i64 2158227993, i64 2158228273, i64 2158228607, i64 2158228941}
!47 = !{i64 2158235139, i64 2158235618, i64 2158235176, i64 2158235232, i64 2158235266, i64 2158235290, i64 2158235331, i64 2158235352, i64 2158235380, i64 2158235414}
!48 = !{i64 2158242257, i64 2158242537, i64 2158242871, i64 2158243205}
