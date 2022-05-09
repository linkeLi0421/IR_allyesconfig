; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_memory.c_pt.bc'
source_filename = "../sound/core/seq/seq_memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_seq_dump_var_event\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_dump_var_event\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_dump_var_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_dump_var_event:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_dump_var_event\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_dump_var_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_seq_expand_var_event\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_expand_var_event\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_expand_var_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_expand_var_event:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_expand_var_event\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_expand_var_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event, ptr, ptr }
%struct.snd_seq_pool = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_snd_seq_dump_var_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_dump_var_event = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_dump_var_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_dump_var_event to i32), ptr @__kstrtab_snd_seq_dump_var_event, ptr @__kstrtabns_snd_seq_dump_var_event }, section "___ksymtab+snd_seq_dump_var_event", align 4
@__kstrtab_snd_seq_expand_var_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_expand_var_event = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_expand_var_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_expand_var_event to i32), ptr @__kstrtab_snd_seq_expand_var_event, ptr @__kstrtabns_snd_seq_expand_var_event }, section "___ksymtab+snd_seq_expand_var_event", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/core/seq/seq_memory.c\00", [36 x i8] zeroinitializer }, align 32
@snd_seq_pool_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@snd_seq_pool_new.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pool->output_sleep\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sPool size          : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sCells in use       : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sPeak cells in use  : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sAlloc success      : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sAlloc failures     : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_seq_cell_alloc.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_seq\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_seq_cell_alloc\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ALSA: seq: pool is not initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 178, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 464, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 470, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 499, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 500, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 501, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 502, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 503, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 230, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 214, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 156, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [31 x i8] c"../sound/core/seq/seq_memory.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 227, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_snd_seq_dump_var_event, ptr @__ksymtab_snd_seq_expand_var_event, ptr @.str, ptr @snd_seq_pool_new.__key, ptr @.str.1, ptr @snd_seq_pool_new.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_pool_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_pool_new.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_dump_var_event(ptr nocapture noundef readonly %event, ptr nocapture noundef readonly %func, ptr noundef %private_data) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 1
  %2 = and i8 %1, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 4
  br i1 %cmp.not.i, label %get_var_len.exit, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

get_var_len.exit:                                 ; preds = %entry
  %data.i = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 4
  %and2.i = and i32 %4, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp = icmp eq i32 %and2.i, 0
  br i1 %cmp, label %get_var_len.exit.cleanup46_crit_edge, label %if.end

get_var_len.exit.cleanup46_crit_edge:             ; preds = %get_var_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end:                                           ; preds = %get_var_len.exit
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %if.end19, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #9
  %ptr = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7, i32 0, i32 4
  %7 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptr, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %curptr.096 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %9, %while.body.preheader ]
  %len.095 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %and2.i, %while.body.preheader ]
  %10 = call i32 @llvm.umin.i32(i32 %len.095, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %10, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %curptr.096, i32 %10, i32 -1226833920) #12, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !47

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %10) #9
  %12 = call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !48
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %curptr.096, i32 noundef %10) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !47

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i87 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %10, %while.body.if.then11.i.i_crit_edge ], [ %10, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %10, %res.0.i.i87
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i87)
  br label %cleanup17

if.end11:                                         ; preds = %if.end.i.i
  %call13 = call i32 %func(ptr noundef %private_data, ptr noundef nonnull %buf, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.cleanup17_crit_edge, label %cleanup

if.end11.cleanup17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

cleanup:                                          ; preds = %if.end11
  %add.ptr = getelementptr i8, ptr %curptr.096, i32 %10
  %sub = sub nsw i32 %len.095, %10
  %cmp4 = icmp sgt i32 %sub, 0
  br i1 %cmp4, label %cleanup.while.body_crit_edge, label %cleanup.cleanup17_crit_edge

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup17:                                        ; preds = %cleanup.cleanup17_crit_edge, %if.end11.cleanup17_crit_edge, %if.then11.i.i
  %retval.2 = phi i32 [ -14, %if.then11.i.i ], [ 0, %cleanup.cleanup17_crit_edge ], [ %call13, %if.end11.cleanup17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #9
  br label %cleanup46

if.end19:                                         ; preds = %if.end
  %and22 = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %ptr26 = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7, i32 0, i32 4
  %16 = ptrtoint ptr %ptr26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptr26, align 4
  br i1 %tobool23.not, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 %func(ptr noundef %private_data, ptr noundef %17, i32 noundef %and2.i) #9
  br label %cleanup46

if.end28:                                         ; preds = %if.end19
  %tobool32.not100 = icmp eq ptr %17, null
  br i1 %tobool32.not100, label %if.end28.cleanup46_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.cleanup46_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %cell.0103 = phi ptr [ %cell.0, %for.inc.for.body_crit_edge ], [ %17, %if.end28.for.body_crit_edge ]
  %len.2102 = phi i32 [ %sub42, %for.inc.for.body_crit_edge ], [ %and2.i, %if.end28.for.body_crit_edge ]
  %18 = tail call i32 @llvm.umin.i32(i32 %len.2102, i32 28)
  %call38 = tail call i32 %func(ptr noundef %private_data, ptr noundef nonnull %cell.0103, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %for.body.cleanup46_crit_edge, label %for.inc

for.body.cleanup46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

for.inc:                                          ; preds = %for.body
  %sub42 = sub nsw i32 %len.2102, %18
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell.0103, i32 0, i32 2
  %19 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %19)
  %cell.0 = load ptr, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub42)
  %cmp31 = icmp slt i32 %sub42, 1
  %tobool32.not = icmp eq ptr %cell.0, null
  %or.cond = select i1 %cmp31, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %for.inc.cleanup46_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup46_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

cleanup46:                                        ; preds = %for.inc.cleanup46_crit_edge, %for.body.cleanup46_crit_edge, %if.end28.cleanup46_crit_edge, %if.then24, %cleanup17, %get_var_len.exit.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.5 = phi i32 [ %retval.2, %cleanup17 ], [ %call27, %if.then24 ], [ 0, %get_var_len.exit.cleanup46_crit_edge ], [ -22, %entry.cleanup46_crit_edge ], [ 0, %if.end28.cleanup46_crit_edge ], [ %call38, %for.body.cleanup46_crit_edge ], [ 0, %for.inc.cleanup46_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_expand_var_event(ptr nocapture noundef readonly %event, i32 noundef %count, ptr noundef %buf, i32 noundef %in_kernel, i32 noundef %size_aligned) #0 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  %flags.i = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 1
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags.i, align 1
  %3 = and i8 %2, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 4
  br i1 %cmp.not.i, label %get_var_len.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_var_len.exit:                                 ; preds = %entry
  %data.i = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.i, align 4
  %and2.i = and i32 %5, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size_aligned)
  %cmp1 = icmp sgt i32 %size_aligned, 0
  br i1 %cmp1, label %if.then2, label %get_var_len.exit.if.end3_crit_edge

get_var_len.exit.if.end3_crit_edge:               ; preds = %get_var_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %get_var_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %size_aligned, -1
  %add = add nuw i32 %sub, %and2.i
  %6 = srem i32 %add, %size_aligned
  %mul = sub i32 %add, %6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %get_var_len.exit.if.end3_crit_edge
  %newlen.0 = phi i32 [ %mul, %if.then2 ], [ %and2.i, %get_var_len.exit.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %newlen.0, i32 %count)
  %cmp4 = icmp sgt i32 %newlen.0, %count
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_kernel)
  %tobool18.not = icmp eq i32 %in_kernel, 0
  br i1 %tobool.not, label %if.end17, label %if.then8

if.then8:                                         ; preds = %if.end6
  br i1 %tobool18.not, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  %ptr = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7, i32 0, i32 4
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptr, align 4
  tail call void @__check_object_size(ptr noundef %buf, i32 noundef %and2.i, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end11.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end11.if.end.i.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end11
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %and2.i, i32 -1226833920) #12, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !47

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf, i32 noundef %and2.i) #9
  %12 = tail call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !48
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %buf, ptr noundef %10, i32 noundef %and2.i) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end11.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %and2.i, %if.end11.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %and2.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !47

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %and2.i, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %tobool18.not, ptr @seq_copy_in_user, ptr @seq_copy_in_kernel
  %call19 = call i32 @snd_seq_dump_var_event(ptr noundef %event, ptr noundef nonnull %cond, ptr noundef nonnull %buf.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  %call19.newlen.0 = select i1 %cmp20, i32 %call19, i32 %newlen.0
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19.newlen.0, %if.end17 ], [ -11, %if.end3.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ %newlen.0, %if.end.i.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @seq_copy_in_kernel(ptr nocapture noundef %bufptr, ptr nocapture noundef readonly %src, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bufptr, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %src, i32 %size)
  %3 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %size
  store ptr %add.ptr, ptr %bufptr, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_copy_in_user(ptr nocapture noundef %bufptr, ptr noundef %src, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bufptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.return_crit_edge, label %if.then27.i.i, !prof !47

land.rhs16.i.i.return_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %return

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %size, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %size, i32 -1226833920) #12, !srcloc !51
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %size) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef %size) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %size, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %size, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.return_crit_edge

copy_to_user.exit.return_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %size
  store ptr %add.ptr, ptr %bufptr, align 4
  br label %return

return:                                           ; preds = %if.end, %copy_to_user.exit.return_crit_edge, %if.then27.i.i, %land.rhs16.i.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %copy_to_user.exit.return_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_cell_free(ptr noundef %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cell, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %pool24 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell, i32 0, i32 1
  %0 = ptrtoint ptr %pool24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool24, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %do.body62, !prof !52

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

do.body62:                                        ; preds = %if.end23
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 12
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %free.i = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free.i, align 4
  %next.i = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell, i32 0, i32 2
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %next.i, align 4
  store ptr %cell, ptr %free.i, align 4
  %counter.i = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %counter.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %counter.i, ptr %counter.i, i32 1, ptr elementtype(i32) %counter.i) #9, !srcloc !53
  %flags69 = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 1
  %6 = ptrtoint ptr %flags69 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags69, align 1
  %8 = and i8 %7, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp71 = icmp eq i8 %8, 4
  br i1 %cmp71, label %if.then73, label %do.body62.if.end83_crit_edge

do.body62.if.end83_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then73:                                        ; preds = %do.body62
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %and75 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then73.if.end83_crit_edge, label %if.then77

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then77:                                        ; preds = %if.then73
  %ptr = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 7, i32 0, i32 4
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr, align 4
  %tobool80.not117 = icmp eq ptr %12, null
  br i1 %tobool80.not117, label %if.then77.if.end83_crit_edge, label %if.then77.for.body_crit_edge

if.then77.for.body_crit_edge:                     ; preds = %if.then77
  br label %for.body

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then77.for.body_crit_edge
  %curp.0118 = phi ptr [ %14, %for.body.for.body_crit_edge ], [ %12, %if.then77.for.body_crit_edge ]
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %curp.0118, i32 0, i32 2
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 4
  %15 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free.i, align 4
  store ptr %16, ptr %next, align 4
  %17 = load ptr, ptr %free.i, align 4
  store ptr %17, ptr %next, align 4
  store ptr %curp.0118, ptr %free.i, align 4
  %call.i.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %counter.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %counter.i, ptr %counter.i, i32 1, ptr elementtype(i32) %counter.i) #9, !srcloc !53
  %tobool80.not = icmp eq ptr %14, null
  br i1 %tobool80.not, label %for.body.if.end83_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end83_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.end83:                                         ; preds = %for.body.if.end83_crit_edge, %if.then77.if.end83_crit_edge, %if.then73.if.end83_crit_edge, %do.body62.if.end83_crit_edge
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 11
  %head.i = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %20, %head.i
  br i1 %cmp.i.i.not, label %if.end83.if.end92_crit_edge, label %if.then86

if.end83.if.end92_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then86:                                        ; preds = %if.end83
  %total_elements.i.i = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %total_elements.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_elements.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter.i, i32 noundef 4) #9
  %23 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %counter.i, align 4
  %sub.i.i = sub i32 %22, %24
  %room.i = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %room.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %room.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %26)
  %cmp.i.not = icmp slt i32 %sub.i.i, %26
  br i1 %cmp.i.not, label %if.then86.if.end92_crit_edge, label %if.then89

if.then86.if.end92_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef %output_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then86.if.end92_crit_edge, %if.end83.if.end92_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call64) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %do.end44, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_event_dup(ptr noundef %pool, ptr nocapture noundef readonly %event, ptr nocapture noundef writeonly %cellp, i32 noundef %nonblock, ptr nocapture noundef readnone %file, ptr noundef %mutexp) local_unnamed_addr #0 align 64 {
entry:
  %cell = alloca ptr, align 4
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cell) #9
  %0 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cell, align 4, !annotation !54
  %1 = ptrtoint ptr %cellp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cellp, align 4
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = and i8 %3, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp = icmp eq i8 %4, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %and2 = and i32 %6, 1073741823
  %sub = add nuw nsw i32 %and2, 27
  %div = udiv i32 %sub, 28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ncells.0 = phi i32 [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %extlen.0 = phi i32 [ %and2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 2
  %7 = ptrtoint ptr %total_elements to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_elements, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ncells.0, i32 %8)
  %cmp3.not = icmp slt i32 %ncells.0, %8
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup85_crit_edge

if.end.cleanup85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.end6:                                          ; preds = %if.end
  %call = call fastcc i32 @snd_seq_cell_alloc(ptr noundef %pool, ptr noundef nonnull %cell, i32 noundef %nonblock, ptr noundef %file, ptr noundef %mutexp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.end6.cleanup85_crit_edge, label %if.end10

if.end6.cleanup85_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.end10:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cell, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %event, i32 28)
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %14 = and i8 %13, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp15 = icmp eq i8 %14, 4
  br i1 %cmp15, label %if.then17, label %if.end10.if.end84_crit_edge

if.end10.if.end84_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then17:                                        ; preds = %if.end10
  %data19 = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7
  %15 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !54
  %or = or i32 %extlen.0, 1073741824
  %data26 = getelementptr inbounds %struct.snd_seq_event, ptr %10, i32 0, i32 7
  %18 = ptrtoint ptr %data26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %data26, align 4
  %ptr = getelementptr inbounds %struct.snd_seq_event, ptr %10, i32 0, i32 7, i32 0, i32 4
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncells.0)
  %cmp34147.not = icmp eq i32 %ncells.0, 0
  br i1 %cmp34147.not, label %if.then17.cleanup75.thread_crit_edge, label %while.body.lr.ph

if.then17.cleanup75.thread_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75.thread

while.body.lr.ph:                                 ; preds = %if.then17
  %ptr31 = getelementptr inbounds %struct.snd_seq_event, ptr %event, i32 0, i32 7, i32 0, i32 4
  %20 = ptrtoint ptr %ptr31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptr31, align 4
  %and21 = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool57.not = icmp eq i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool63.not = icmp sgt i32 %16, -1
  br label %while.body

cleanup75.thread:                                 ; preds = %cleanup.cleanup75.thread_crit_edge, %if.then17.cleanup75.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  br label %if.end84

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dec154.in = phi i32 [ %ncells.0, %while.body.lr.ph ], [ %dec154, %cleanup.while.body_crit_edge ]
  %buf.0151 = phi ptr [ %21, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %tail.0150 = phi ptr [ null, %while.body.lr.ph ], [ %32, %cleanup.while.body_crit_edge ]
  %src.0149 = phi ptr [ %21, %while.body.lr.ph ], [ %src.1, %cleanup.while.body_crit_edge ]
  %len18.0148 = phi i32 [ %extlen.0, %while.body.lr.ph ], [ %sub74, %cleanup.while.body_crit_edge ]
  %dec154 = add nsw i32 %dec154.in, -1
  %22 = tail call i32 @llvm.smin.i32(i32 %len18.0148, i32 28)
  %call40 = call fastcc i32 @snd_seq_cell_alloc(ptr noundef %pool, ptr noundef nonnull %tmp, i32 noundef %nonblock, ptr noundef %file, ptr noundef %mutexp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %while.body.__error_crit_edge, label %if.end44

while.body.__error_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

if.end44:                                         ; preds = %while.body
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 4
  %cmp48 = icmp eq ptr %24, null
  br i1 %cmp48, label %if.then50, label %if.end44.if.end54_crit_edge

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tmp, align 4
  %27 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %ptr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end44.if.end54_crit_edge
  %tobool.not = icmp eq ptr %tail.0150, null
  br i1 %tobool.not, label %if.end54.if.end56_crit_edge, label %if.then55

if.end54.if.end56_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tmp, align 4
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %tail.0150, i32 0, i32 2
  %30 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %next, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end54.if.end56_crit_edge
  %31 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tmp, align 4
  %tobool58.not = icmp eq ptr %src.0149, null
  %or.cond = select i1 %tobool57.not, i1 true, i1 %tobool58.not
  br i1 %or.cond, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %33 = call ptr @memcpy(ptr %32, ptr %src.0149, i32 28)
  %next62 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %src.0149, i32 0, i32 2
  %34 = ptrtoint ptr %next62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next62, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end56
  br i1 %tobool63.not, label %if.else70, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.i.i = icmp slt i32 %22, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.__error_crit_edge, label %if.then27.i.i, !prof !47

land.rhs16.i.i.__error_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %__error

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %32, i32 noundef %22, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.0151, i32 %22, i32 -1226833920) #12, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !47

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %32, i32 noundef %22) #9
  %37 = tail call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !48
  %and.i.i.i.i = and i32 %39, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %32, ptr noundef %buf.0151, i32 noundef %22) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %22, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %22, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !47

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %22, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %sub.i.i
  %40 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %__error

if.else70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call ptr @memcpy(ptr %32, ptr %buf.0151, i32 %22)
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.end.i.i.cleanup_crit_edge, %if.then59
  %src.1 = phi ptr [ %35, %if.then59 ], [ %src.0149, %if.else70 ], [ %src.0149, %if.end.i.i.cleanup_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf.0151, i32 %22
  %sub74 = sub i32 %len18.0148, %22
  %cmp34 = icmp ugt i32 %dec154.in, 1
  br i1 %cmp34, label %cleanup.while.body_crit_edge, label %cleanup.cleanup75.thread_crit_edge

cleanup.cleanup75.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75.thread

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end84:                                         ; preds = %cleanup75.thread, %if.end10.if.end84_crit_edge
  %42 = ptrtoint ptr %cellp to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %10, ptr %cellp, align 4
  br label %cleanup85

__error:                                          ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.__error_crit_edge, %while.body.__error_crit_edge
  %err.1.ph = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.__error_crit_edge ], [ %call40, %while.body.__error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  tail call void @snd_seq_cell_free(ptr noundef %10)
  br label %cleanup85

cleanup85:                                        ; preds = %__error, %if.end84, %if.end6.cleanup85_crit_edge, %if.end.cleanup85_crit_edge
  %retval.0 = phi i32 [ %err.1.ph, %__error ], [ 0, %if.end84 ], [ -12, %if.end.cleanup85_crit_edge ], [ %call, %if.end6.cleanup85_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cell) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_seq_cell_alloc(ptr noundef %pool, ptr nocapture noundef writeonly %cellp, i32 noundef %nonblock, ptr nocapture noundef readnone %file, ptr noundef %mutexp) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %cmp = icmp eq ptr %pool, null
  %0 = getelementptr inbounds i8, ptr %wait, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = ptrtoint ptr %cellp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cellp, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wait, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %3, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %2, align 4
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %12 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool, align 4
  %cmp7 = icmp eq ptr %13, null
  br i1 %cmp7, label %do.body10, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool22.not = icmp eq i32 %nonblock, 0
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 6
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 11
  %tobool103.not = icmp eq ptr %mutexp, null
  br label %while.cond

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_cell_alloc.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_cell_alloc, %if.then15)) #9
          to label %__error [label %if.then15], !srcloc !55

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_cell_alloc.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.14) #9
  br label %__error

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %while.cond.preheader
  %flags.0 = phi i32 [ %call118, %signal_pending.exit.while.cond_crit_edge ], [ %call4, %while.cond.preheader ]
  %14 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free, align 4
  %cmp20 = icmp eq ptr %15, null
  %or.cond = and i1 %tobool22.not, %cmp20
  %16 = ptrtoint ptr %closing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %closing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %or.cond, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  br i1 %tobool23.not, label %__here, label %land.rhs.__error_crit_edge

land.rhs.__error_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

__here:                                           ; preds = %land.rhs
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@snd_seq_cell_alloc, %__here) to i32), ptr %task_state_change, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %21, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  call void @add_wait_queue(ptr noundef %output_sleep, ptr noundef nonnull %wait) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #9
  br i1 %tobool103.not, label %do.body110.critedge, label %if.then104

if.then104:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef nonnull %mutexp) #9
  call void @schedule() #9
  call void @mutex_lock_nested(ptr noundef nonnull %mutexp, i32 noundef 0) #9
  br label %do.body110

do.body110.critedge:                              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  call void @schedule() #9
  br label %do.body110

do.body110:                                       ; preds = %do.body110.critedge, %if.then104
  %call118 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @remove_wait_queue(ptr noundef %output_sleep, ptr noundef nonnull %wait) #9
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %do.body110.__error_crit_edge, !prof !47

do.body110.__error_crit_edge:                     ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

signal_pending.exit:                              ; preds = %do.body110
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i = and i32 %31, 1
  %tobool127.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool127.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.__error_crit_edge

signal_pending.exit.__error_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool23.not, label %if.end133, label %while.end.__error_crit_edge

while.end.__error_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

if.end133:                                        ; preds = %while.end
  br i1 %cmp20, label %if.else, label %if.then136

if.then136:                                       ; preds = %if.end133
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %15, i32 0, i32 2
  %32 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next, align 4
  %34 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %free, align 4
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %counter, i32 1, i32 3, i32 1) #9
  %35 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %counter, ptr %counter, i32 1, ptr elementtype(i32) %counter) #9, !srcloc !57
  %call.i.i182 = call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #9
  %36 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %counter, align 4
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 7
  %38 = ptrtoint ptr %max_used to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp140 = icmp slt i32 %39, %37
  br i1 %cmp140, label %if.then142, label %if.then136.if.end144_crit_edge

if.then136.if.end144_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.then142:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %max_used to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %max_used, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.then136.if.end144_crit_edge
  %event_alloc_success = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 10
  %41 = ptrtoint ptr %event_alloc_success to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %event_alloc_success, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %event_alloc_success, align 4
  %43 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %next, align 4
  br label %if.end147

if.else:                                          ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %event_alloc_failures = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 9
  %44 = ptrtoint ptr %event_alloc_failures to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %event_alloc_failures, align 4
  %inc146 = add i32 %45, 1
  store i32 %inc146, ptr %event_alloc_failures, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else, %if.end144
  %err.0 = phi i32 [ 0, %if.end144 ], [ -11, %if.else ]
  %46 = ptrtoint ptr %cellp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %15, ptr %cellp, align 4
  br label %__error

__error:                                          ; preds = %if.end147, %while.end.__error_crit_edge, %signal_pending.exit.__error_crit_edge, %do.body110.__error_crit_edge, %land.rhs.__error_crit_edge, %if.then15, %do.body10
  %err.1 = phi i32 [ %err.0, %if.end147 ], [ -22, %if.then15 ], [ -12, %while.end.__error_crit_edge ], [ -22, %do.body10 ], [ -12, %land.rhs.__error_crit_edge ], [ -512, %do.body110.__error_crit_edge ], [ -512, %signal_pending.exit.__error_crit_edge ]
  %flags.1 = phi i32 [ %flags.0, %if.end147 ], [ %call4, %if.then15 ], [ %flags.0, %while.end.__error_crit_edge ], [ %call4, %do.body10 ], [ %flags.0, %land.rhs.__error_crit_edge ], [ %call118, %do.body110.__error_crit_edge ], [ %call118, %signal_pending.exit.__error_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #9
  br label %cleanup

cleanup:                                          ; preds = %__error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %__error ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_pool_poll_wait(ptr noundef %pool, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 11
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %tobool3.not.i = icmp eq ptr %output_sleep, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %1(ptr noundef %file, ptr noundef nonnull %output_sleep, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %total_elements.i.i = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %total_elements.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_elements.i.i, align 4
  %counter.i.i = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %counter.i.i, align 4
  %sub.i.i = sub i32 %3, %5
  %room.i = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 5
  %6 = ptrtoint ptr %room.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %room.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %7)
  %cmp.i = icmp sge i32 %sub.i.i, %7
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_pool_init(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %size = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 36) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end23.cleanup_crit_edge, label %kvmalloc_array.exit, !prof !52

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

kvmalloc_array.exit:                              ; preds = %if.end23
  %4 = extractvalue { i32, i1 } %2, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3264, i32 noundef -1) #13
  %tobool24.not = icmp eq ptr %call.i.i, null
  br i1 %tobool24.not, label %kvmalloc_array.exit.cleanup_crit_edge, label %if.end26

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %kvmalloc_array.exit
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %5 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pool, align 4
  %tobool27.not = icmp eq ptr %6, null
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %7 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %pool, align 4
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 1
  %8 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %free, align 4
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp68 = icmp sgt i32 %10, 0
  br i1 %cmp68, label %if.end30.for.body_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end30.for.body_crit_edge
  %cell.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %11 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pool, align 4
  %add.ptr = getelementptr %struct.snd_seq_event_cell, ptr %12, i32 %cell.069
  %pool34 = getelementptr %struct.snd_seq_event_cell, ptr %12, i32 %cell.069, i32 1
  %13 = ptrtoint ptr %pool34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pool, ptr %pool34, align 4
  %14 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free, align 4
  %next = getelementptr %struct.snd_seq_event_cell, ptr %12, i32 %cell.069, i32 2
  %16 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %next, align 4
  store ptr %add.ptr, ptr %free, align 4
  %inc = add nuw nsw i32 %cell.069, 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end30.for.end_crit_edge
  %.lcssa = phi i32 [ %10, %if.end30.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %add = add i32 %.lcssa, 1
  %div = sdiv i32 %add, 2
  %room = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 5
  %19 = ptrtoint ptr %room to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %room, align 4
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 7
  %20 = ptrtoint ptr %max_used to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %max_used, align 4
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 2
  %21 = ptrtoint ptr %total_elements to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.lcssa, ptr %total_elements, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then28, %kvmalloc_array.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then28 ], [ 0, %for.end ], [ -12, %kvmalloc_array.exit.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_pool_mark_closing(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 415, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 12
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 6
  %0 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %closing, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_pool_done(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 427, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %head.i = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %1, %head.i
  br i1 %cmp.i.i.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %output_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 3
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #9
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49 = icmp sgt i32 %3, 0
  br i1 %cmp49, label %if.end27.while.body_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end27.while.body_crit_edge
  %call29 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #9
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %counter, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end27.while.end_crit_edge
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool, align 4
  store ptr null, ptr %pool, align 4
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 1
  %8 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %free, align 4
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 2
  %9 = ptrtoint ptr %total_elements to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %total_elements, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call void @kvfree(ptr noundef %7) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 6
  %10 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %closing, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_pool_new(i32 noundef %poolsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 140) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_seq_pool_new.__key, i16 noundef signext 3) #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  %free = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %free, align 4
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %total_elements to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %total_elements, align 8
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #9
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %counter, align 4
  %closing = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %closing, align 8
  %output_sleep = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %output_sleep, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_seq_pool_new.__key.2) #9
  %size = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %poolsize, ptr %size, align 8
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %max_used to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %max_used, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_pool_delete(ptr nocapture noundef %ppool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppool, align 4
  store ptr null, ptr %ppool, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %snd_seq_pool_mark_closing.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

snd_seq_pool_mark_closing.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 12
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %closing.i = getelementptr inbounds %struct.snd_seq_pool, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %closing.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %closing.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call27.i) #9
  %call = tail call i32 @snd_seq_pool_done(ptr noundef nonnull %1)
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %snd_seq_pool_mark_closing.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_info_pool(ptr nocapture noundef readonly %buffer, ptr noundef %pool, ptr noundef %space) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pool, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %total_elements = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %total_elements to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_elements, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %space, i32 noundef %3) #9
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %counter = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #9
  %6 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %counter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %space, i32 noundef %7) #9
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %max_used = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 7
  %10 = ptrtoint ptr %max_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_used, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef %space, i32 noundef %11) #9
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %event_alloc_success = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 10
  %14 = ptrtoint ptr %event_alloc_success to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event_alloc_success, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef %space, i32 noundef %15) #9
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %event_alloc_failures = getelementptr inbounds %struct.snd_seq_pool, ptr %pool, i32 0, i32 9
  %18 = ptrtoint ptr %event_alloc_failures to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %event_alloc_failures, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef %space, i32 noundef %19) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_snd_seq_dump_var_event, !1, !"__ksymtab_snd_seq_dump_var_event", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_memory.c", i32 108, i32 1}
!2 = !{ptr @__ksymtab_snd_seq_expand_var_event, !3, !"__ksymtab_snd_seq_expand_var_event", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_memory.c", i32 159, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq_memory.c", i32 178, i32 6}
!6 = !{ptr @snd_seq_pool_new.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/core/seq/seq_memory.c", i32 464, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @snd_seq_pool_new.__key.2, !10, !"__key", i1 false, i1 false}
!10 = !{!"../sound/core/seq/seq_memory.c", i32 470, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/core/seq/seq_memory.c", i32 499, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/core/seq/seq_memory.c", i32 500, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/core/seq/seq_memory.c", i32 501, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/core/seq/seq_memory.c", i32 502, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/core/seq/seq_memory.c", i32 503, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/core/seq/seq_memory.c", i32 227, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @snd_seq_cell_alloc.__UNIQUE_ID_ddebug234, !30, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../sound/core/seq/seq_memory.c", i32 233, i32 3}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2152152654, i64 2152152679}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 4648209}
!49 = !{i64 4648406}
!50 = !{i64 2152133639}
!51 = !{i64 2152153335, i64 2152153360}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2148592935, i64 2148592961, i64 2148592990, i64 2148593024, i64 2148593055, i64 2148593078}
!54 = !{!"auto-init"}
!55 = !{i64 2148211196, i64 2148211201, i64 2148211214, i64 2148211258, i64 2148211292, i64 2148211313}
!56 = !{i64 2154216947}
!57 = !{i64 2148590470, i64 2148590496, i64 2148590525, i64 2148590559, i64 2148590590, i64 2148590613}
