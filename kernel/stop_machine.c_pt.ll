; ModuleID = '/llk/IR_all_yes/kernel/stop_machine.c_pt.bc'
source_filename = "../kernel/stop_machine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stop_machine\22, \22a\22\09"
module asm "\09.weak\09__crc_stop_machine\09\09\09\09"
module asm "\09.long\09__crc_stop_machine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stop_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22stop_machine\22\09\09\09\09\09"
module asm "__kstrtabns_stop_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpu_stopper = type { ptr, %struct.raw_spinlock, i8, %struct.list_head, %struct.cpu_stop_work, i32, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpu_stop_done = type { %struct.atomic_t, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wake_q_head = type { ptr, ptr }
%struct.multi_stop_data = type { ptr, ptr, i32, ptr, i32, %struct.atomic_t }

@cpu_stopper = weak dso_local global %struct.cpu_stopper zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@print_stop_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%sStopper: %pS <- %pS\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"print_stop_info\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/stop_machine.c\00", [42 x i8] zeroinitializer }, align 32
@print_stop_info._entry_ptr = internal global ptr @print_stop_info._entry, section ".printk_index", align 4
@__initcall__kmod_stop_machine__234_586_cpu_stop_initearly = internal global ptr @cpu_stop_init, section ".initcallearly.init", align 4
@stop_machine_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@stop_machine_cpuslocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_stop_machine = external dso_local constant [0 x i8], align 1
@__kstrtabns_stop_machine = external dso_local constant [0 x i8], align 1
@__ksymtab_stop_machine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stop_machine to i32), ptr @__kstrtab_stop_machine, ptr @__kstrtabns_stop_machine }, section "___ksymtab_gpl+stop_machine", align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@stop_cpus_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @stop_cpus_mutex, i64 52), ptr getelementptr (i8, ptr @stop_cpus_mutex, i64 52) }, ptr @stop_cpus_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__pcpu_unique_cpu_stopper = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@stop_cpus_in_progress = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_stop_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&stopper->lock\00", [17 x i8] zeroinitializer }, align 32
@cpu_stop_threads = internal global { %struct.smp_hotplug_thread, [48 x i8] } { %struct.smp_hotplug_thread { ptr @cpu_stopper, %struct.list_head zeroinitializer, ptr @cpu_stop_should_run, ptr @cpu_stopper_thread, ptr @cpu_stop_create, ptr null, ptr null, ptr @cpu_stop_park, ptr null, i8 1, ptr @.str.6 }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"migration/%u\00", [19 x i8] zeroinitializer }, align 32
@cpu_stopper_thread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cpu_stop: %ps(%p) leaked preempt count\0A\00", [56 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stop_cpus_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stop_cpus_mutex\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 63, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"stop_machine_initialized\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"stop_cpus_mutex\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 87, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 108, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"stop_cpus_in_progress\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 577, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"cpu_stop_threads\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 560, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 564, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 520, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [25 x i8] c"../kernel/stop_machine.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 67, i32 8 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__initcall__kmod_stop_machine__234_586_cpu_stop_initearly, ptr @__ksymtab_stop_machine, ptr @print_stop_info._entry, ptr @print_stop_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stop_machine_initialized, ptr @stop_cpus_mutex, ptr @init_completion.__key, ptr @.str.3, ptr @.str.4, ptr @stop_cpus_in_progress, ptr @cpu_stop_init.__key, ptr @.str.5, ptr @cpu_stop_threads, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_stop_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_machine_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_cpus_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_cpus_in_progress to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_stop_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_stop_threads to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_stop_info(ptr noundef %log_lvl, ptr noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cpu.i, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpu_stopper to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.not = icmp eq ptr %8, %task
  br i1 %cmp.not, label %do.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fn = getelementptr inbounds %struct.cpu_stopper, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fn, align 4
  %caller = getelementptr inbounds %struct.cpu_stopper, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caller, align 4
  %13 = inttoptr i32 %12 to ptr
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %log_lvl, ptr noundef %10, ptr noundef %13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stop_one_cpu(i32 noundef %cpu, ptr noundef %fn, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %done = alloca %struct.cpu_stop_done, align 4
  %work = alloca %struct.cpu_stop_work, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %done) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %work) #10
  %0 = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %work, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fn, ptr %0, align 8
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arg, ptr %2, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %done, ptr %3, align 4
  %11 = call ptr @memset(ptr %done, i32 0, i32 64)
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %done, i32 noundef 4) #10
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %done, align 4
  %completion.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2
  %13 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #10
  %call = call fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %cpu, ptr noundef nonnull %work)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 151, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  call void @wait_for_completion(ptr noundef %completion.i) #10
  %ret = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 1
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %work) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %done) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %cpu, ptr noundef %work) unnamed_addr #0 align 64 {
entry:
  %wakeq = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_stopper to i32)
  %2 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wakeq) #10
  %3 = getelementptr inbounds %struct.wake_q_head, ptr %wakeq, i32 0, i32 1
  %4 = ptrtoint ptr %wakeq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 1 to ptr), ptr %wakeq, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wakeq, ptr %3, align 4
  %6 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !49
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 1
  %call = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %enabled10 = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %enabled10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled10, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %works.i = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %work, ptr noundef %13, ptr noundef %works.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.__cpu_stop_queue_work.exit_crit_edge

if.then.__cpu_stop_queue_work.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cpu_stop_queue_work.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %work, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %works.i, ptr %work, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %work, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %work, ptr %13, align 4
  br label %__cpu_stop_queue_work.exit

__cpu_stop_queue_work.exit:                       ; preds = %if.end.i.i.i, %if.then.__cpu_stop_queue_work.exit_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  call void @wake_q_add(ptr noundef nonnull %wakeq, ptr noundef %19) #10
  br label %do.body16

if.else:                                          ; preds = %entry
  %done = getelementptr inbounds %struct.cpu_stop_work, ptr %work, i32 0, i32 4
  %20 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %done, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %if.else.do.body16_crit_edge, label %if.then13

if.else.do.body16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

if.then13:                                        ; preds = %if.else
  %call.i.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #10
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then13.do.body16_crit_edge

if.then13.do.body16_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %completion.i = getelementptr inbounds %struct.cpu_stop_done, ptr %21, i32 0, i32 2
  call void @complete(ptr noundef %completion.i) #10
  br label %do.body16

do.body16:                                        ; preds = %if.then.i, %if.then13.do.body16_crit_edge, %if.else.do.body16_crit_edge, %__cpu_stop_queue_work.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #10
  call void @wake_up_q(ptr noundef nonnull %wakeq) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %23 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i35 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i35 to ptr
  %preempt_count.i.i36 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i36, align 4
  %sub.i = add i32 %26, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i36, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wakeq) #10
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @stop_machine_yield(ptr noundef %cpumask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stop_two_cpus(i32 noundef %cpu1, i32 noundef %cpu2, ptr noundef %fn, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %wakeq.i = alloca %struct.wake_q_head, align 4
  %done = alloca %struct.cpu_stop_done, align 4
  %work1 = alloca %struct.cpu_stop_work, align 4
  %work2 = alloca %struct.cpu_stop_work, align 8
  %msdata = alloca %struct.multi_stop_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %done) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %work1) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %work1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %work2) #10
  %1 = getelementptr inbounds %struct.list_head, ptr %work2, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cpu_stop_work, ptr %work2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cpu_stop_work, ptr %work2, i32 0, i32 2
  %4 = getelementptr inbounds %struct.cpu_stop_work, ptr %work2, i32 0, i32 3
  %5 = getelementptr inbounds %struct.cpu_stop_work, ptr %work2, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msdata) #10
  %6 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 1
  %7 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2
  %8 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 3
  %9 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 4
  %10 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 5
  %rem.i = and i32 %cpu1, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu1, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %11 = ptrtoint ptr %msdata to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fn, ptr %msdata, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arg, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %10, align 4
  %17 = tail call ptr @llvm.returnaddress(i32 0)
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %work2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %work2, align 8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @multi_cpu_stop, ptr %2, align 8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %3, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msdata, ptr %4, align 8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %done, ptr %5, align 4
  %24 = call ptr @memcpy(ptr %work1, ptr %work2, i32 24)
  %25 = call ptr @memset(ptr %done, i32 0, i32 64)
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %done, i32 noundef 4) #10
  %26 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 2, ptr %done, align 4
  %completion.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2
  %27 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #10
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %7, align 4
  %call.i.i.i18 = call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef 4) #10
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %29, ptr %10, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %9, align 4
  %32 = call i32 @llvm.umax.i32(i32 %cpu1, i32 %cpu2)
  %33 = call i32 @llvm.umin.i32(i32 %cpu1, i32 %cpu2)
  %arrayidx.i19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i19, align 4
  %add.i20 = add i32 %35, ptrtoint (ptr @cpu_stopper to i32)
  %36 = inttoptr i32 %add.i20 to ptr
  %arrayidx9.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.i, align 4
  %add10.i = add i32 %38, ptrtoint (ptr @cpu_stopper to i32)
  %39 = inttoptr i32 %add10.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wakeq.i) #10
  %40 = getelementptr inbounds %struct.wake_q_head, ptr %wakeq.i, i32 0, i32 1
  %41 = ptrtoint ptr %wakeq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 1 to ptr), ptr %wakeq.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %wakeq.i, ptr %40, align 4
  %lock.i = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 1
  %lock15.i = getelementptr inbounds %struct.cpu_stopper, ptr %39, i32 0, i32 1
  %enabled.i = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 2
  %enabled16.i = getelementptr inbounds %struct.cpu_stopper, ptr %39, i32 0, i32 2
  %works.i.i = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 3, i32 1
  %works.i64.i = getelementptr inbounds %struct.cpu_stopper, ptr %39, i32 0, i32 3
  %prev.i.i65.i = getelementptr inbounds %struct.cpu_stopper, ptr %39, i32 0, i32 3, i32 1
  br label %retry.i

retry.i:                                          ; preds = %retry.i.backedge, %entry
  %43 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %46, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  call void @_raw_spin_lock_nested(ptr noundef %lock15.i, i32 noundef 1) #10
  %47 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %retry.i.unlock.i_crit_edge, label %lor.lhs.false.i

retry.i.unlock.i_crit_edge:                       ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

lor.lhs.false.i:                                  ; preds = %retry.i
  %49 = ptrtoint ptr %enabled16.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %enabled16.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool17.not.i = icmp eq i8 %50, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i.unlock.i_crit_edge, label %if.end.i

lor.lhs.false.i.unlock.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %.b5658.i = load i1, ptr @stop_cpus_in_progress, align 1
  br i1 %.b5658.i, label %if.end.i.unlock.i_crit_edge, label %if.end22.i, !prof !59

if.end.i.unlock.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.end22.i:                                       ; preds = %if.end.i
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %work1, ptr noundef %52, ptr noundef %works.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end22.i.__cpu_stop_queue_work.exit.i_crit_edge

if.end22.i.__cpu_stop_queue_work.exit.i_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cpu_stop_queue_work.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %work1, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %work1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %works.i.i, ptr %work1, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %0, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %work1, ptr %52, align 4
  br label %__cpu_stop_queue_work.exit.i

__cpu_stop_queue_work.exit.i:                     ; preds = %if.end.i.i.i.i, %if.end22.i.__cpu_stop_queue_work.exit.i_crit_edge
  %57 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %36, align 4
  call void @wake_q_add(ptr noundef nonnull %wakeq.i, ptr noundef %58) #10
  %59 = ptrtoint ptr %prev.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i65.i, align 4
  %call.i.i.i66.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %work2, ptr noundef %60, ptr noundef %works.i64.i) #10
  br i1 %call.i.i.i66.i, label %if.end.i.i.i68.i, label %__cpu_stop_queue_work.exit.i.__cpu_stop_queue_work.exit69.i_crit_edge

__cpu_stop_queue_work.exit.i.__cpu_stop_queue_work.exit69.i_crit_edge: ; preds = %__cpu_stop_queue_work.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cpu_stop_queue_work.exit69.i

if.end.i.i.i68.i:                                 ; preds = %__cpu_stop_queue_work.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %prev.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %work2, ptr %prev.i.i65.i, align 4
  %62 = ptrtoint ptr %work2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %works.i64.i, ptr %work2, align 8
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %1, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %work2, ptr %60, align 4
  br label %__cpu_stop_queue_work.exit69.i

__cpu_stop_queue_work.exit69.i:                   ; preds = %if.end.i.i.i68.i, %__cpu_stop_queue_work.exit.i.__cpu_stop_queue_work.exit69.i_crit_edge
  %65 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %39, align 4
  call void @wake_q_add(ptr noundef nonnull %wakeq.i, ptr noundef %66) #10
  br label %unlock.i

unlock.i:                                         ; preds = %__cpu_stop_queue_work.exit69.i, %if.end.i.unlock.i_crit_edge, %lor.lhs.false.i.unlock.i_crit_edge, %retry.i.unlock.i_crit_edge
  %cmp.i = phi i1 [ false, %__cpu_stop_queue_work.exit69.i ], [ false, %lor.lhs.false.i.unlock.i_crit_edge ], [ false, %retry.i.unlock.i_crit_edge ], [ true, %if.end.i.unlock.i_crit_edge ]
  %tobool.not = phi i1 [ true, %__cpu_stop_queue_work.exit69.i ], [ false, %lor.lhs.false.i.unlock.i_crit_edge ], [ false, %retry.i.unlock.i_crit_edge ], [ false, %if.end.i.unlock.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock15.i) #10
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #10
  br i1 %cmp.i, label %do.body32.i, label %cpu_stop_queue_two_works.exit, !prof !59

do.body32.i:                                      ; preds = %unlock.i
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  %67 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i59.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i59.i to ptr
  %preempt_count.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i60.i, align 4
  %sub.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i60.i, align 4
  %.b5770.i = load i1, ptr @stop_cpus_in_progress, align 1
  br i1 %.b5770.i, label %do.body32.i.do.end40.i_crit_edge, label %do.body32.i.retry.i.backedge_crit_edge

do.body32.i.retry.i.backedge_crit_edge:           ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i.backedge

do.body32.i.do.end40.i_crit_edge:                 ; preds = %do.body32.i
  br label %do.end40.i

retry.i.backedge:                                 ; preds = %do.end40.i.retry.i.backedge_crit_edge, %do.body32.i.retry.i.backedge_crit_edge
  br label %retry.i

do.end40.i:                                       ; preds = %do.end40.i.do.end40.i_crit_edge, %do.body32.i.do.end40.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !62
  %.b57.i = load i1, ptr @stop_cpus_in_progress, align 1
  br i1 %.b57.i, label %do.end40.i.do.end40.i_crit_edge, label %do.end40.i.retry.i.backedge_crit_edge

do.end40.i.retry.i.backedge_crit_edge:            ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i.backedge

do.end40.i.do.end40.i_crit_edge:                  ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40.i

cpu_stop_queue_two_works.exit:                    ; preds = %unlock.i
  call void @wake_up_q(ptr noundef nonnull %wakeq.i) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %71 = call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i61.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i61.i to ptr
  %preempt_count.i.i62.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i62.i, align 4
  %sub.i63.i = add i32 %74, -1
  store volatile i32 %sub.i63.i, ptr %preempt_count.i.i62.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wakeq.i) #10
  br i1 %tobool.not, label %if.end8, label %cpu_stop_queue_two_works.exit.cleanup_crit_edge

cpu_stop_queue_two_works.exit.cleanup_crit_edge:  ; preds = %cpu_stop_queue_two_works.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %cpu_stop_queue_two_works.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef %completion.i) #10
  %ret = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 1
  %75 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %cpu_stop_queue_two_works.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %76, %if.end8 ], [ -2, %cpu_stop_queue_two_works.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msdata) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %work2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %work1) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %done) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_cpu_stop(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !64
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %active_cpus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_cpus, align 4
  %tobool.not = icmp eq ptr %6, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call.i)
  %cmp4 = icmp eq i32 %3, %call.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %7, %3
  br i1 %cmp.not.i.i.i, label %if.else.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.else.cpumask_test_cpu.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.else
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !65

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.else.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %6, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %10 = shl nuw i32 1, %and.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8 = icmp ne i32 %11, 0
  br label %if.end

if.end:                                           ; preds = %cpumask_test_cpu.exit, %if.then
  %is_active.0.in = phi i1 [ %tobool8, %cpumask_test_cpu.exit ], [ %cmp4, %if.then ]
  %cpumask.0 = phi ptr [ %6, %cpumask_test_cpu.exit ], [ @__cpu_online_mask, %if.then ]
  %state = getelementptr inbounds %struct.multi_stop_data, ptr %data, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.multi_stop_data, ptr %data, i32 0, i32 1
  %thread_ack.i = getelementptr inbounds %struct.multi_stop_data, ptr %data, i32 0, i32 5
  %num_threads.i.i = getelementptr inbounds %struct.multi_stop_data, ptr %data, i32 0, i32 2
  br label %do.body10

do.body10:                                        ; preds = %if.end41.do.body10_crit_edge, %if.end
  %err.0 = phi i32 [ 0, %if.end ], [ %err.2, %if.end41.do.body10_crit_edge ]
  %curstate.0 = phi i32 [ 0, %if.end ], [ %curstate.1, %if.end41.do.body10_crit_edge ]
  tail call void @stop_machine_yield(ptr noundef nonnull %cpumask.0)
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %curstate.0)
  %cmp15.not = icmp eq i32 %13, %curstate.0
  br i1 %cmp15.not, label %if.else36, label %if.then17

if.then17:                                        ; preds = %do.body10
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then17.sw.epilog_crit_edge [
    i32 2, label %do.body18
    i32 3, label %sw.bb30
  ]

if.then17.sw.epilog_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body18:                                        ; preds = %if.then17
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !64
  %and.i.i91 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool20.not = icmp eq i32 %and.i.i91, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !66
  br i1 %tobool20.not, label %if.then23, label %do.body18.sw.epilog_crit_edge

do.body18.sw.epilog_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.then17
  br i1 %is_active.0.in, label %if.then32, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data33, align 4
  %call34 = tail call i32 %17(ptr noundef %19) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %sw.bb30.sw.epilog_crit_edge, %if.then23, %do.body18.sw.epilog_crit_edge, %if.then17.sw.epilog_crit_edge
  %err.1 = phi i32 [ %err.0, %if.then17.sw.epilog_crit_edge ], [ %call34, %if.then32 ], [ %err.0, %sw.bb30.sw.epilog_crit_edge ], [ %err.0, %if.then23 ], [ %err.0, %do.body18.sw.epilog_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_ack.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %thread_ack.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_ack.i, ptr %thread_ack.i, i32 1, ptr elementtype(i32) %thread_ack.i) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %sw.epilog.if.end41_crit_edge

sw.epilog.if.end41_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %add.i = add i32 %22, 1
  %23 = ptrtoint ptr %num_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_threads.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_ack.i, i32 noundef 4) #10
  %25 = ptrtoint ptr %thread_ack.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %24, ptr %thread_ack.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %add.i, ptr %state, align 4
  br label %if.end41

if.else36:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %curstate.0)
  %cmp37 = icmp ugt i32 %curstate.0, 1
  br i1 %cmp37, label %if.then39, label %if.else36.if.end41_crit_edge

if.else36.if.end41_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @touch_softlockup_watchdog() #10
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.else36.if.end41_crit_edge, %if.then.i, %sw.epilog.if.end41_crit_edge
  %err.2 = phi i32 [ %err.0, %if.then39 ], [ %err.0, %if.else36.if.end41_crit_edge ], [ %err.1, %sw.epilog.if.end41_crit_edge ], [ %err.1, %if.then.i ]
  %curstate.1 = phi i32 [ %curstate.0, %if.then39 ], [ %curstate.0, %if.else36.if.end41_crit_edge ], [ %13, %sw.epilog.if.end41_crit_edge ], [ %13, %if.then.i ]
  tail call void @rcu_momentary_dyntick_idle() #10
  %cmp43.not = icmp eq i32 %curstate.1, 4
  br i1 %cmp43.not, label %do.body46, label %if.end41.do.body10_crit_edge

if.end41.do.body10_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.body46:                                        ; preds = %if.end41
  %and.i92 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool54.not = icmp eq i32 %and.i92, 0
  br i1 %tobool54.not, label %if.then55, label %do.body46.do.body57_crit_edge

do.body46.do.body57_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

if.then55:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body57

do.body57:                                        ; preds = %if.then55, %do.body46.do.body57_crit_edge
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !64
  %and.i.i93 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i93)
  %tobool65.not = icmp eq i32 %and.i.i93, 0
  br i1 %tobool65.not, label %if.then69, label %do.body57.do.end72_crit_edge, !prof !59

do.body57.do.end72_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body57.do.end72_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #10, !srcloc !67
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef %cpu, ptr noundef %fn, ptr noundef %arg, ptr noundef %work_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %2 = ptrtoint ptr %work_buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %work_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %work_buf, i32 8
  %3 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fn, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %work_buf, i32 12
  %4 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %work_buf, i32 16
  %5 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arg, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %work_buf, i32 20
  %6 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %call = tail call fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %cpu, ptr noundef %work_buf)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_machine_park(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_stopper to i32)
  %2 = inttoptr i32 %add to ptr
  %enabled = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %enabled, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %call = tail call i32 @kthread_park(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_machine_unpark(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_stopper to i32)
  %2 = inttoptr i32 %add to ptr
  %enabled = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %enabled, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  tail call void @kthread_unpark(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_stop_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %0)
  %cmp23 = icmp ult i32 %call22, %0
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call24 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call22, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call24
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @cpu_stopper to i32)
  %3 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %3, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @cpu_stop_init.__key, i16 noundef signext 2) #10
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %works to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %works, ptr %works, align 4
  %prev.i = getelementptr inbounds %struct.cpu_stopper, ptr %3, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %works, ptr %prev.i, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call24, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body5_crit_edge

for.body.do.body5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body5:                                         ; preds = %for.body.do.body5_crit_edge, %entry.do.body5_crit_edge
  %call6 = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @cpu_stop_threads) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.end16, label %do.body9, !prof !65

do.body9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/stop_machine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end16:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu18 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu18, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @cpu_stopper to i32)
  %13 = inttoptr i32 %add.i to ptr
  %enabled.i = getelementptr inbounds %struct.cpu_stopper, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %enabled.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 4
  tail call void @kthread_unpark(ptr noundef %16) #10
  store i1 true, ptr @stop_machine_initialized, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stop_machine_cpuslocked(ptr noundef %fn, ptr noundef %data, ptr noundef %cpus) local_unnamed_addr #0 align 64 {
entry:
  %done.i.i = alloca %struct.cpu_stop_done, align 4
  %msdata = alloca %struct.multi_stop_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msdata) #10
  %0 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 4
  %4 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 5
  %5 = ptrtoint ptr %msdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fn, ptr %msdata, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %0, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %7 = load volatile i32, ptr @__num_online_cpus, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cpus, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  tail call void @lockdep_assert_cpus_held() #10
  %.b108 = load i1, ptr @stop_machine_initialized, align 1
  br i1 %.b108, label %if.end99, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.then.if.end32_crit_edge, label %land.rhs

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.rhs:                                         ; preds = %if.then
  %.b107109 = load i1, ptr @stop_machine_cpuslocked.__already_done, align 1
  br i1 %.b107109, label %land.rhs.if.end32_crit_edge, label %if.then11, !prof !65

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @stop_machine_cpuslocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 609, i32 noundef 9, ptr noundef null) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then11, %land.rhs.if.end32_crit_edge, %if.then.if.end32_crit_edge
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool54.not = icmp eq i32 %and.i, 0
  br i1 %tobool54.not, label %if.then72, label %do.end61

do.end61:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = tail call i32 %fn(ptr noundef %data) #10
  br label %do.body74

if.then72:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %call62112 = tail call i32 %fn(ptr noundef %data) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body74

do.body74:                                        ; preds = %if.then72, %do.end61
  %call62113 = phi i32 [ %call62, %do.end61 ], [ %call62112, %if.then72 ]
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !64
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool82.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool82.not, label %if.then91, label %do.body74.do.end94_crit_edge, !prof !59

do.body74.do.end94_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end94

if.then91:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body74.do.end94_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #10, !srcloc !67
  br label %cleanup

if.end99:                                         ; preds = %entry
  %call.i.i.i111 = call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #10
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %7, ptr %4, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %3, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @stop_cpus_mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %done.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %16) #10
  %17 = call ptr @memset(ptr %done.i.i, i32 0, i32 64)
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %done.i.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %call4.i.i.i.i, ptr %done.i.i, align 4
  %completion.i.i.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %completion.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %completion.i.i.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done.i.i, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #10
  %call1.i.i = call fastcc zeroext i1 @queue_stop_cpus_work(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull %msdata, ptr noundef nonnull %done.i.i) #10
  br i1 %call1.i.i, label %if.end.i.i, label %if.end99.stop_cpus.exit_crit_edge

if.end99.stop_cpus.exit_crit_edge:                ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_cpus.exit

if.end.i.i:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef %completion.i.i.i) #10
  %ret.i.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret.i.i, align 4
  br label %stop_cpus.exit

stop_cpus.exit:                                   ; preds = %if.end.i.i, %if.end99.stop_cpus.exit_crit_edge
  %retval.0.i.i = phi i32 [ %21, %if.end.i.i ], [ -2, %if.end99.stop_cpus.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %done.i.i) #10
  call void @mutex_unlock(ptr noundef nonnull @stop_cpus_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %stop_cpus.exit, %do.end94
  %retval.0 = phi i32 [ %retval.0.i.i, %stop_cpus.exit ], [ %call62113, %do.end94 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msdata) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stop_machine(ptr noundef %fn, ptr noundef %data, ptr noundef %cpus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #10
  %call = tail call i32 @stop_machine_cpuslocked(ptr noundef %fn, ptr noundef %data, ptr noundef %cpus)
  tail call void @cpus_read_unlock() #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stop_machine_from_inactive_cpu(ptr noundef %fn, ptr noundef %data, ptr noundef %cpus) local_unnamed_addr #0 align 64 {
entry:
  %msdata = alloca %struct.multi_stop_data, align 4
  %done = alloca %struct.cpu_stop_done, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msdata) #10
  %0 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 4
  %4 = getelementptr inbounds %struct.multi_stop_data, ptr %msdata, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %msdata, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %msdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fn, ptr %msdata, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %0, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cpus, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %done) #10
  %12 = call ptr @memset(ptr %done, i32 255, i32 64)
  %13 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %16)
  %cmp.not.i.i.i.i = icmp ugt i32 %17, %16
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_active.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_active.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_active.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_active.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_active.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_active.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_active.exit

cpu_active.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_active.exit_crit_edge, %entry.cpu_active.exit_crit_edge
  %div3.i.i.i = lshr i32 %16, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_active_mask, i32 %div3.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %16, 31
  %20 = shl nuw i32 1, %and.i.i.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.end.i.i, label %do.body5, !prof !65

do.body5:                                         ; preds = %cpu_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/stop_machine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 667, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

if.end.i.i:                                       ; preds = %cpu_active.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_active_mask, i32 noundef %22) #10
  %add = add i32 %call4.i.i, 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %1, align 4
  %call13150 = tail call i32 @mutex_trylock(ptr noundef nonnull @stop_cpus_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13150)
  %tobool14.not151 = icmp eq i32 %call13150, 0
  br i1 %tobool14.not151, label %if.end.i.i.do.end21_crit_edge, label %if.end.i.i.while.end_crit_edge

if.end.i.i.while.end_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.i.i.do.end21_crit_edge:                    ; preds = %if.end.i.i
  br label %do.end21

do.end21:                                         ; preds = %do.end21.do.end21_crit_edge, %if.end.i.i.do.end21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !72
  %call13 = tail call i32 @mutex_trylock(ptr noundef nonnull @stop_cpus_mutex) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end21.do.end21_crit_edge, label %do.end21.while.end_crit_edge

do.end21.while.end_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end21.do.end21_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

while.end:                                        ; preds = %do.end21.while.end_crit_edge, %if.end.i.i.while.end_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #10
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %25, ptr %4, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i145 = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_active_mask, i32 noundef %28) #10
  %29 = call ptr @memset(ptr %done, i32 0, i32 64)
  %call.i.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %done, i32 noundef 4) #10
  %30 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %call4.i.i145, ptr %done, align 4
  %completion.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2
  %31 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #10
  %32 = call fastcc zeroext i1 @queue_stop_cpus_work(ptr noundef nonnull @__cpu_active_mask, ptr noundef nonnull %msdata, ptr noundef nonnull %done)
  %call28 = call i32 @multi_cpu_stop(ptr noundef nonnull %msdata)
  %call30152 = call zeroext i1 @completion_done(ptr noundef %completion.i) #10
  br i1 %call30152, label %while.end.while.end43_crit_edge, label %while.end.do.end38_crit_edge

while.end.do.end38_crit_edge:                     ; preds = %while.end
  br label %do.end38

while.end.while.end43_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end43

do.end38:                                         ; preds = %do.end38.do.end38_crit_edge, %while.end.do.end38_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !74
  %call30 = call zeroext i1 @completion_done(ptr noundef %completion.i) #10
  br i1 %call30, label %do.end38.while.end43_crit_edge, label %do.end38.do.end38_crit_edge

do.end38.do.end38_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end38.while.end43_crit_edge:                   ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end43

while.end43:                                      ; preds = %do.end38.while.end43_crit_edge, %while.end.while.end43_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @stop_cpus_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool44.not = icmp eq i32 %call28, 0
  br i1 %tobool44.not, label %cond.false, label %while.end43.cond.end_crit_edge

while.end43.cond.end_crit_edge:                   ; preds = %while.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %while.end43
  call void @__sanitizer_cov_trace_pc() #12
  %ret45 = getelementptr inbounds %struct.cpu_stop_done, ptr %done, i32 0, i32 1
  %33 = ptrtoint ptr %ret45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret45, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.end43.cond.end_crit_edge
  %cond = phi i32 [ %34, %cond.false ], [ %call28, %while.end43.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %done) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msdata) #10
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @queue_stop_cpus_work(ptr noundef %cpumask, ptr noundef %arg, ptr noundef %done) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  store i1 true, ptr @stop_cpus_in_progress, align 1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %call4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %4)
  %cmp5 = icmp ult i32 %call4, %4
  br i1 %cmp5, label %do.body1.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body1.lr.ph:                                   ; preds = %entry
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = ptrtoint ptr %5 to i32
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %do.body1.lr.ph
  %call7 = phi i32 [ %call4, %do.body1.lr.ph ], [ %call, %do.body1.do.body1_crit_edge ]
  %queued.0.off06 = phi i1 [ false, %do.body1.lr.ph ], [ %spec.select, %do.body1.do.body1_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, ptrtoint (ptr getelementptr inbounds (%struct.cpu_stopper, ptr @cpu_stopper, i32 0, i32 4) to i32)
  %9 = inttoptr i32 %add to ptr
  %fn5 = getelementptr inbounds %struct.cpu_stop_work, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fn5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @multi_cpu_stop, ptr %fn5, align 4
  %arg6 = getelementptr inbounds %struct.cpu_stop_work, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %arg6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arg, ptr %arg6, align 4
  %done7 = getelementptr inbounds %struct.cpu_stop_work, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %done7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %done, ptr %done7, align 4
  %caller = getelementptr inbounds %struct.cpu_stop_work, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %caller to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %caller, align 4
  %call8 = tail call fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %call7, ptr noundef %9)
  %spec.select = select i1 %call8, i1 true, i1 %queued.0.off06
  %call = tail call i32 @cpumask_next(i32 noundef %call7, ptr noundef %cpumask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %14
  br i1 %cmp, label %do.body1.do.body1_crit_edge, label %do.body1.for.end_crit_edge

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

for.end:                                          ; preds = %do.body1.for.end_crit_edge, %entry.for.end_crit_edge
  %queued.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %spec.select, %do.body1.for.end_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  store i1 false, ptr @stop_cpus_in_progress, align 1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  %15 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i2 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  ret i1 %queued.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_momentary_dyntick_idle() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_stop_should_run(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_stopper to i32)
  %2 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %works, align 4
  %cmp.i = icmp ne ptr %4, %works
  %lnot.ext = zext i1 %cmp.i to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #10
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpu_stopper_thread(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_stopper to i32)
  %2 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %works, align 4
  %cmp.i.not92 = icmp eq ptr %4, %works
  br i1 %cmp.i.not92, label %entry.if.end.thread_crit_edge, label %if.then.lr.ph

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.then.lr.ph:                                    ; preds = %entry
  %caller10 = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 5
  %fn11 = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 6
  br label %if.then

if.end.thread:                                    ; preds = %if.end57.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %if.end65

if.then:                                          ; preds = %if.end57.if.then_crit_edge, %if.then.lr.ph
  %5 = phi ptr [ %4, %if.then.lr.ph ], [ %41, %if.end57.if.then_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end65_crit_edge, label %if.then6

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then6:                                         ; preds = %if.end
  %fn7 = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %fn7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fn7, align 4
  %arg8 = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %arg8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg8, align 4
  %done9 = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %done9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %done9, align 4
  %caller = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caller, align 4
  %22 = ptrtoint ptr %caller10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %caller10, align 4
  %23 = ptrtoint ptr %fn11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %fn11, align 4
  %24 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %27, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  %call12 = tail call i32 %15(ptr noundef %17) #10
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %if.then6.if.end19_crit_edge, label %if.then14

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool15.not = icmp eq i32 %call12, 0
  br i1 %tobool15.not, label %if.then14.if.end18_crit_edge, label %if.then16

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %ret17 = getelementptr inbounds %struct.cpu_stop_done, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %ret17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call12, ptr %ret17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then14.if.end18_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end18.if.end19_crit_edge

if.end18.if.end19_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %completion.i = getelementptr inbounds %struct.cpu_stop_done, ptr %19, i32 0, i32 2
  tail call void @complete(ptr noundef %completion.i) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %if.end18.if.end19_crit_edge, %if.then6.if.end19_crit_edge
  %30 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i.i87 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i87 to ptr
  %preempt_count.i.i88 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i88 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i88, align 4
  %sub.i = add i32 %33, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i88, align 4
  %34 = ptrtoint ptr %fn11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %fn11, align 4
  %35 = ptrtoint ptr %caller10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %caller10, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !39) #10
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool23.not = icmp eq i32 %39, 0
  br i1 %tobool23.not, label %if.end19.if.end57_crit_edge, label %land.rhs

if.end19.if.end57_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.rhs:                                         ; preds = %if.end19
  %.b86 = load i1, ptr @cpu_stopper_thread.__already_done, align 1
  br i1 %.b86, label %land.rhs.if.end57_crit_edge, label %if.then31, !prof !65

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then31:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_stopper_thread.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 521, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %15, ptr noundef %17) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then31, %land.rhs.if.end57_crit_edge, %if.end19.if.end57_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %40 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %works, align 4
  %cmp.i.not = icmp eq ptr %41, %works
  br i1 %cmp.i.not, label %if.end57.if.end.thread_crit_edge, label %if.end57.if.then_crit_edge

if.end57.if.then_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end57.if.end.thread_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.end65:                                         ; preds = %if.end.if.end65_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpu_stop_create(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_stopper to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @sched_set_stop_task(i32 noundef %cpu, ptr noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpu_stop_park(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_stopper to i32)
  %2 = inttoptr i32 %add to ptr
  %works = getelementptr inbounds %struct.cpu_stopper, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %works, align 4
  %cmp.i.not = icmp eq ptr %4, %works
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end13, !prof !65

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 549, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end13, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_stop_task(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/stop_machine.c", i32 63, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @print_stop_info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @print_stop_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_stop_machine__234_586_cpu_stop_initearly, !7, !"__initcall__kmod_stop_machine__234_586_cpu_stop_initearly", i1 false, i1 false}
!7 = !{!"../kernel/stop_machine.c", i32 586, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/stop_machine.c", i32 609, i32 3}
!10 = !{ptr @__ksymtab_stop_machine, !11, !"__ksymtab_stop_machine", i1 false, i1 false}
!11 = !{!"../kernel/stop_machine.c", i32 634, i32 1}
!12 = !{ptr @__pcpu_unique_cpu_stopper, !13, !"__pcpu_unique_cpu_stopper", i1 false, i1 false}
!13 = !{!"../kernel/stop_machine.c", i32 49, i32 8}
!14 = !{ptr @cpu_stopper, !13, !"cpu_stopper", i1 false, i1 false}
!15 = !{ptr @init_completion.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../include/linux/completion.h", i32 87, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"stop_cpus_in_progress", i1 false, i1 false}
!22 = !{!"../kernel/stop_machine.c", i32 68, i32 13}
!23 = !{ptr @cpu_stop_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../kernel/stop_machine.c", i32 577, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/stop_machine.c", i32 564, i32 18}
!28 = !{ptr @cpu_stop_threads, !29, !"cpu_stop_threads", i1 false, i1 false}
!29 = !{!"../kernel/stop_machine.c", i32 560, i32 34}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../kernel/stop_machine.c", i32 520, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"stop_machine_initialized", i1 false, i1 false}
!34 = !{!"../kernel/stop_machine.c", i32 50, i32 13}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/stop_machine.c", i32 67, i32 8}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @stop_cpus_mutex, !36, !"stop_cpus_mutex", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2154104672}
!50 = !{i8 0, i8 2}
!51 = !{i64 2148595922}
!52 = !{i64 2148510631, i64 2148510663, i64 2148510692, i64 2148510726, i64 2148510757, i64 2148510780}
!53 = !{i64 2148596151}
!54 = !{i64 2154105251}
!55 = !{i64 2154108029}
!56 = !{i64 2154107871}
!57 = !{i64 2154105557}
!58 = !{i64 2154114082}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2154114456}
!61 = !{i64 2154114733}
!62 = !{i64 2154114575}
!63 = !{i64 2154114876}
!64 = !{i64 914858}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 912561}
!67 = !{i64 915143}
!68 = !{i64 2154127224, i64 2154127710, i64 2154127261, i64 2154127317, i64 2154127351, i64 2154127375, i64 2154127416, i64 2154127437, i64 2154127465, i64 2154127499}
!69 = !{i64 912126, i64 912187}
!70 = !{i64 2154139203, i64 2154139689, i64 2154139240, i64 2154139296, i64 2154139330, i64 2154139354, i64 2154139395, i64 2154139416, i64 2154139444, i64 2154139478}
!71 = !{i64 2154140801}
!72 = !{i64 2154140643}
!73 = !{i64 2154141198}
!74 = !{i64 2154141040}
!75 = !{i64 2154115271}
!76 = !{i64 2154115309}
!77 = !{i64 2154116403}
!78 = !{i64 2154116500}
